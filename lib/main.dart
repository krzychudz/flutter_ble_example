import 'package:flutter/material.dart';
import 'package:flutter_ble_example/services/bluetooth/bluetooth_service.dart';
import 'package:flutter_ble_example/views/dashboard/dashboard_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

import 'services/bluetooth/bluetooth_service_interface.dart';

void main() {
  FlutterBluePlus.setLogLevel(LogLevel.verbose, color: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<BluetoothConnectionServiceInterface>(
      create: (context) => BluetoothConnectionService(),
      child: MaterialApp(
        title: 'Flutter BLE example',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: DashboardScreen.route,
        routes: {
          DashboardScreen.route: (context) => const DashboardScreen(),
        },
      ),
    );
  }
}
