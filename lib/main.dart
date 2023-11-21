import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BluetoothCharacteristic? rxBluetoothCharacteristic;
  BluetoothCharacteristic? txBluetoothCharacteristic;

  @override
  void initState() {
    FlutterBluePlus.setLogLevel(LogLevel.verbose, color: true);

    var subscription = FlutterBluePlus.onScanResults.listen(
      (results) {
        if (results.isNotEmpty) {
          for (var element in results) {
            if (element.device.platformName == "ESP BLE TEST DEVICE") {
              print("Result data esp ble");
              FlutterBluePlus.stopScan();

              final espDevice = element.device;
              var subscription = espDevice.connectionState
                  .listen((BluetoothConnectionState state) async {
                if (state == BluetoothConnectionState.disconnected) {
                  // 1. typically, start a periodic timer that tries to
                  //    reconnect, or just call connect() again right now
                  // 2. you must always re-discover services after disconnection!
                  print("Disconnected");
                }
                if (state == BluetoothConnectionState.connected) {
                  print("Connected");

                  List<BluetoothService> services =
                      await espDevice.discoverServices();
                  for (var service in services) {
                    print("Result data service: ${service}");
                    for (var char in service.characteristics) {
                      if (char.characteristicUuid ==
                          Guid.fromString(
                              "6E400002-B5A3-F393-E0A9-E50E24DCCA9E")) {
                        rxBluetoothCharacteristic = char;
                        print("Characterisitc RX found");
                      } else if (char.characteristicUuid ==
                          Guid.fromString(
                              "6E400003-B5A3-F393-E0A9-E50E24DCCA9E")) {
                        txBluetoothCharacteristic = char;
                        print("Characterisitc TX found");

                        final sub = txBluetoothCharacteristic?.onValueReceived
                            .listen((event) {
                          print("HERE DATA: ${String.fromCharCodes(event)}");
                        });

                        if (sub != null) espDevice.cancelWhenDisconnected(sub);

                        await txBluetoothCharacteristic?.setNotifyValue(true);
                      }
                    }
                  }
                }
              });

              espDevice.connect();
            }
          }

          print("Result data: $results");
        }
      },
      onError: (e) => print("Result data error: $e"),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'BLE test',
            ),
            ElevatedButton(
              onPressed: () async {
                await Permission.location.request();
                await FlutterBluePlus.startScan();
              },
              child: Text("Serach for devices"),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () async {
                await rxBluetoothCharacteristic?.write("ON".codeUnits);
              },
              child: Text("Led ON"),
            ),
            ElevatedButton(
              onPressed: () async {
                await rxBluetoothCharacteristic?.write("OFF".codeUnits);
              },
              child: Text("Led OFF"),
            ),
          ],
        ),
      ),
    );
  }
}
