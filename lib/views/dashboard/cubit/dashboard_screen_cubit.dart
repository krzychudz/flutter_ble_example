import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter_ble_example/services/bluetooth/bluetooth_service_interface.dart';
import 'package:flutter_ble_example/views/dashboard/cubit/dashboard_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

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
    final bluetoothDevice = await _bluetoothConnectionService.findBluetoothDeviceByPlatformName("ESP BLE TEST DEVICE");
    if (bluetoothDevice == null) return;

    await bluetoothDevice.connect();

    final bluetoothDeviceServices = await _bluetoothConnectionService.getBluetoothServices(bluetoothDevice);
  }
}
