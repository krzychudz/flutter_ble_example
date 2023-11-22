import 'package:flutter_blue_plus/flutter_blue_plus.dart';

abstract interface class BluetoothConnectionServiceInterface {
  Future<BluetoothDevice?> findBluetoothDeviceByPlatformName(String platformName);
  Future<List<BluetoothService>> getBluetoothServices(BluetoothDevice bluetoothDevice);
}
