// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_screen_state.freezed.dart';
part 'dashboard_screen_state.g.dart';

@freezed
class DashboardScreenState with _$DashboardScreenState {
  factory DashboardScreenState({
    bool? isConnected,
  }) = _DashboardScreenState;

  factory DashboardScreenState.fromJson(Map<String, dynamic> json) =>
      _$DashboardScreenStateFromJson(json);
}
