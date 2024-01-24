// ignore: depend_on_referenced_packages
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_screen_state.freezed.dart';

enum DeviceConnectionState { connected, disconnected }

@freezed
class DashboardScreenState with _$DashboardScreenState {
  factory DashboardScreenState({
    String? ledStatus,
    BluetoothDevice? espBluetoothDevice,
    BluetoothCharacteristic? rxBluetoothCharacteristic,
    BluetoothCharacteristic? txBluetoothCharacteristic,
    @Default(DeviceConnectionState.disconnected) DeviceConnectionState deviceConnectionState,
  }) = _DashboardScreenState;
}
