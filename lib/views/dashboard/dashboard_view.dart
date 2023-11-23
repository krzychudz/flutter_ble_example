import 'package:flutter/material.dart';
import 'package:flutter_ble_example/views/dashboard/cubit/dashboard_screen_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('BLE test'),
            const SizedBox(height: 16),
            const LedStatus(),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => context.read<DashboardScreenCubit>().connectToDevice(),
              child: const Text("Search for the device"),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => context.read<DashboardScreenCubit>().onLedOnPressed(),
              child: const Text("Led ON"),
            ),
            ElevatedButton(
              onPressed: () => context.read<DashboardScreenCubit>().onLedOffPressed(),
              child: const Text("Led OFF"),
            ),
            ElevatedButton(
              onPressed: () => context.read<DashboardScreenCubit>().disconnect(),
              child: const Text("Disconnect"),
            ),
          ],
        ),
      ),
    );
  }
}

class LedStatus extends StatelessWidget {
  const LedStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final ledStatus = context.select((DashboardScreenCubit cubit) => cubit.state.ledStatus) ?? 'OFF';

    return Center(
      child: Text("LED STATUS: $ledStatus"),
    );
  }
}
