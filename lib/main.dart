import 'package:flutter/material.dart';
import 'package:flutter_ble_example/views/dashboard/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BLE example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: DashboardScreen.route,
      routes: {
        DashboardScreen.route: (context) => const DashboardScreen(),
      },
    );
  }
}
