import 'package:flutter/material.dart';
import 'package:flutter_ble_example/views/dashboard/cubit/dashboard_screen_cubit.dart';
import 'package:flutter_ble_example/views/dashboard/dashboard_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../services/bluetooth/bluetooth_service_interface.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  static String route = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => DashboardScreenCubit(
        RepositoryProvider.of<BluetoothConnectionServiceInterface>(context),
      )..requestNeededPermissions(),
      child: const DashboardView(),
    );
  }
}
