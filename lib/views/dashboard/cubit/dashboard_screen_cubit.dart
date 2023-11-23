import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter_ble_example/common/extension/bluetooth_services.dart';
import 'package:flutter_ble_example/services/bluetooth/bluetooth_service_interface.dart';
import 'package:flutter_ble_example/views/dashboard/cubit/dashboard_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../common/values/characteristics_data.dart';
import 'presentation_events/presentation_events.dart';

class DashboardScreenCubit extends Cubit<DashboardScreenState>
    with BlocPresentationMixin<DashboardScreenState, DashboardCubitPresentationEvent> {
  DashboardScreenCubit(
    this._bluetoothConnectionService,
  ) : super(DashboardScreenState());

  final BluetoothConnectionServiceInterface _bluetoothConnectionService;

  void requestNeededPermissions() async {
    final locationPermissionStatus = await Permission.location.request();
    if (locationPermissionStatus.isDenied || locationPermissionStatus.isPermanentlyDenied) {
      emitPresentation(LocationPermissionDenied());
    }

    final bluetoothPermissionStatus = await Permission.bluetooth.request();
    if (bluetoothPermissionStatus.isDenied || bluetoothPermissionStatus.isPermanentlyDenied) {
      emitPresentation(BluetoothPermissionDenied());
    }

    final bluetoothScanPermission = await Permission.bluetoothScan.request();
    if (bluetoothScanPermission.isDenied || bluetoothScanPermission.isPermanentlyDenied) {
      emitPresentation(BluetoothScanPermissionDenied());
    }
  }

  void connectToDevice() async {
    BluetoothDevice? bluetoothDevice = state.espBluetoothDevice;
    if (bluetoothDevice == null) {
      bluetoothDevice = await _bluetoothConnectionService.findBluetoothDeviceByPlatformName(
        CharacteristicsData.deviceName,
      );
      if (bluetoothDevice == null) return;

      emit(state.copyWith(espBluetoothDevice: bluetoothDevice));
    }

    await bluetoothDevice.connect();

    final bluetoothDeviceServices = await _bluetoothConnectionService.getBluetoothServices(bluetoothDevice);

    final rxBluetoothCharacteristic = bluetoothDeviceServices.getCharacteristicById(
      CharacteristicsData.rxBluetoothCharacteristicId,
    );

    final txBluetoothCharacteristic = bluetoothDeviceServices.getCharacteristicById(
      CharacteristicsData.txBluetoothCharacteristicId,
    );

    emit(state.copyWith(
      rxBluetoothCharacteristic: rxBluetoothCharacteristic,
      txBluetoothCharacteristic: txBluetoothCharacteristic,
    ));

    setupTxCharacteristicsCallback();
  }

  void disconnect() async {
    await state.espBluetoothDevice?.disconnect();
  }

  void setupTxCharacteristicsCallback() async {
    final bluetoothDevice = state.espBluetoothDevice;
    final txCharacteristics = state.txBluetoothCharacteristic;
    if (bluetoothDevice == null || txCharacteristics == null) return;

    final txCharacteristicSubscription = txCharacteristics.onValueReceived.listen((event) {
      final data = String.fromCharCodes(event);
      emit(state.copyWith(ledStatus: data));
    });

    bluetoothDevice.cancelWhenDisconnected(txCharacteristicSubscription);
    await txCharacteristics.setNotifyValue(true);
  }

  void onLedOnPressed() async {
    _writeRxCharacteristics("ON");
  }

  void onLedOffPressed() {
    _writeRxCharacteristics("OFF");
  }

  void _writeRxCharacteristics(String data) async {
    final rxCharacteristics = state.rxBluetoothCharacteristic;
    if (rxCharacteristics == null) return;

    await rxCharacteristics.write(data.codeUnits);
  }
}
