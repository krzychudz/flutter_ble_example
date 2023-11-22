import 'package:flutter_ble_example/services/bluetooth/bluetooth_service_interface.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class BluetoothConnectionService implements BluetoothConnectionServiceInterface {
  @override
  Future<BluetoothDevice?> findBluetoothDeviceByPlatformName(String platformName) async {
    await FlutterBluePlus.startScan();

    await for (final scanResult in FlutterBluePlus.onScanResults) {
      for (var scanResult in scanResult) {
        final bluetoothDevice = scanResult.device;

        if (bluetoothDevice.platformName == platformName) {
          await FlutterBluePlus.stopScan();
          return bluetoothDevice;
        }
      }
    }

    return null;
  }

  @override
  Future<List<BluetoothService>> getBluetoothServices(BluetoothDevice bluetoothDevice) async {
    return await bluetoothDevice.discoverServices();
  }
}
