// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardScreenState {
  String? get ledStatus => throw _privateConstructorUsedError;
  BluetoothDevice? get espBluetoothDevice => throw _privateConstructorUsedError;
  BluetoothCharacteristic? get rxBluetoothCharacteristic =>
      throw _privateConstructorUsedError;
  BluetoothCharacteristic? get txBluetoothCharacteristic =>
      throw _privateConstructorUsedError;
  BluetoothConnectionState get deviceConnectionState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardScreenStateCopyWith<DashboardScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardScreenStateCopyWith<$Res> {
  factory $DashboardScreenStateCopyWith(DashboardScreenState value,
          $Res Function(DashboardScreenState) then) =
      _$DashboardScreenStateCopyWithImpl<$Res, DashboardScreenState>;
  @useResult
  $Res call(
      {String? ledStatus,
      BluetoothDevice? espBluetoothDevice,
      BluetoothCharacteristic? rxBluetoothCharacteristic,
      BluetoothCharacteristic? txBluetoothCharacteristic,
      BluetoothConnectionState deviceConnectionState});
}

/// @nodoc
class _$DashboardScreenStateCopyWithImpl<$Res,
        $Val extends DashboardScreenState>
    implements $DashboardScreenStateCopyWith<$Res> {
  _$DashboardScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ledStatus = freezed,
    Object? espBluetoothDevice = freezed,
    Object? rxBluetoothCharacteristic = freezed,
    Object? txBluetoothCharacteristic = freezed,
    Object? deviceConnectionState = null,
  }) {
    return _then(_value.copyWith(
      ledStatus: freezed == ledStatus
          ? _value.ledStatus
          : ledStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      espBluetoothDevice: freezed == espBluetoothDevice
          ? _value.espBluetoothDevice
          : espBluetoothDevice // ignore: cast_nullable_to_non_nullable
              as BluetoothDevice?,
      rxBluetoothCharacteristic: freezed == rxBluetoothCharacteristic
          ? _value.rxBluetoothCharacteristic
          : rxBluetoothCharacteristic // ignore: cast_nullable_to_non_nullable
              as BluetoothCharacteristic?,
      txBluetoothCharacteristic: freezed == txBluetoothCharacteristic
          ? _value.txBluetoothCharacteristic
          : txBluetoothCharacteristic // ignore: cast_nullable_to_non_nullable
              as BluetoothCharacteristic?,
      deviceConnectionState: null == deviceConnectionState
          ? _value.deviceConnectionState
          : deviceConnectionState // ignore: cast_nullable_to_non_nullable
              as BluetoothConnectionState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardScreenStateImplCopyWith<$Res>
    implements $DashboardScreenStateCopyWith<$Res> {
  factory _$$DashboardScreenStateImplCopyWith(_$DashboardScreenStateImpl value,
          $Res Function(_$DashboardScreenStateImpl) then) =
      __$$DashboardScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? ledStatus,
      BluetoothDevice? espBluetoothDevice,
      BluetoothCharacteristic? rxBluetoothCharacteristic,
      BluetoothCharacteristic? txBluetoothCharacteristic,
      BluetoothConnectionState deviceConnectionState});
}

/// @nodoc
class __$$DashboardScreenStateImplCopyWithImpl<$Res>
    extends _$DashboardScreenStateCopyWithImpl<$Res, _$DashboardScreenStateImpl>
    implements _$$DashboardScreenStateImplCopyWith<$Res> {
  __$$DashboardScreenStateImplCopyWithImpl(_$DashboardScreenStateImpl _value,
      $Res Function(_$DashboardScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ledStatus = freezed,
    Object? espBluetoothDevice = freezed,
    Object? rxBluetoothCharacteristic = freezed,
    Object? txBluetoothCharacteristic = freezed,
    Object? deviceConnectionState = null,
  }) {
    return _then(_$DashboardScreenStateImpl(
      ledStatus: freezed == ledStatus
          ? _value.ledStatus
          : ledStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      espBluetoothDevice: freezed == espBluetoothDevice
          ? _value.espBluetoothDevice
          : espBluetoothDevice // ignore: cast_nullable_to_non_nullable
              as BluetoothDevice?,
      rxBluetoothCharacteristic: freezed == rxBluetoothCharacteristic
          ? _value.rxBluetoothCharacteristic
          : rxBluetoothCharacteristic // ignore: cast_nullable_to_non_nullable
              as BluetoothCharacteristic?,
      txBluetoothCharacteristic: freezed == txBluetoothCharacteristic
          ? _value.txBluetoothCharacteristic
          : txBluetoothCharacteristic // ignore: cast_nullable_to_non_nullable
              as BluetoothCharacteristic?,
      deviceConnectionState: null == deviceConnectionState
          ? _value.deviceConnectionState
          : deviceConnectionState // ignore: cast_nullable_to_non_nullable
              as BluetoothConnectionState,
    ));
  }
}

/// @nodoc

class _$DashboardScreenStateImpl implements _DashboardScreenState {
  _$DashboardScreenStateImpl(
      {this.ledStatus,
      this.espBluetoothDevice,
      this.rxBluetoothCharacteristic,
      this.txBluetoothCharacteristic,
      this.deviceConnectionState = BluetoothConnectionState.disconnected});

  @override
  final String? ledStatus;
  @override
  final BluetoothDevice? espBluetoothDevice;
  @override
  final BluetoothCharacteristic? rxBluetoothCharacteristic;
  @override
  final BluetoothCharacteristic? txBluetoothCharacteristic;
  @override
  @JsonKey()
  final BluetoothConnectionState deviceConnectionState;

  @override
  String toString() {
    return 'DashboardScreenState(ledStatus: $ledStatus, espBluetoothDevice: $espBluetoothDevice, rxBluetoothCharacteristic: $rxBluetoothCharacteristic, txBluetoothCharacteristic: $txBluetoothCharacteristic, deviceConnectionState: $deviceConnectionState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardScreenStateImpl &&
            (identical(other.ledStatus, ledStatus) ||
                other.ledStatus == ledStatus) &&
            (identical(other.espBluetoothDevice, espBluetoothDevice) ||
                other.espBluetoothDevice == espBluetoothDevice) &&
            (identical(other.rxBluetoothCharacteristic,
                    rxBluetoothCharacteristic) ||
                other.rxBluetoothCharacteristic == rxBluetoothCharacteristic) &&
            (identical(other.txBluetoothCharacteristic,
                    txBluetoothCharacteristic) ||
                other.txBluetoothCharacteristic == txBluetoothCharacteristic) &&
            (identical(other.deviceConnectionState, deviceConnectionState) ||
                other.deviceConnectionState == deviceConnectionState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      ledStatus,
      espBluetoothDevice,
      rxBluetoothCharacteristic,
      txBluetoothCharacteristic,
      deviceConnectionState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardScreenStateImplCopyWith<_$DashboardScreenStateImpl>
      get copyWith =>
          __$$DashboardScreenStateImplCopyWithImpl<_$DashboardScreenStateImpl>(
              this, _$identity);
}

abstract class _DashboardScreenState implements DashboardScreenState {
  factory _DashboardScreenState(
          {final String? ledStatus,
          final BluetoothDevice? espBluetoothDevice,
          final BluetoothCharacteristic? rxBluetoothCharacteristic,
          final BluetoothCharacteristic? txBluetoothCharacteristic,
          final BluetoothConnectionState deviceConnectionState}) =
      _$DashboardScreenStateImpl;

  @override
  String? get ledStatus;
  @override
  BluetoothDevice? get espBluetoothDevice;
  @override
  BluetoothCharacteristic? get rxBluetoothCharacteristic;
  @override
  BluetoothCharacteristic? get txBluetoothCharacteristic;
  @override
  BluetoothConnectionState get deviceConnectionState;
  @override
  @JsonKey(ignore: true)
  _$$DashboardScreenStateImplCopyWith<_$DashboardScreenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
