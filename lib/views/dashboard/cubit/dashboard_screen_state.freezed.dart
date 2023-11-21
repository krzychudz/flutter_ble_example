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

DashboardScreenState _$DashboardScreenStateFromJson(Map<String, dynamic> json) {
  return _DashboardScreenState.fromJson(json);
}

/// @nodoc
mixin _$DashboardScreenState {
  bool? get isConnected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
  $Res call({bool? isConnected});
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
    Object? isConnected = freezed,
  }) {
    return _then(_value.copyWith(
      isConnected: freezed == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool?,
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
  $Res call({bool? isConnected});
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
    Object? isConnected = freezed,
  }) {
    return _then(_$DashboardScreenStateImpl(
      isConnected: freezed == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardScreenStateImpl implements _DashboardScreenState {
  _$DashboardScreenStateImpl({this.isConnected});

  factory _$DashboardScreenStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardScreenStateImplFromJson(json);

  @override
  final bool? isConnected;

  @override
  String toString() {
    return 'DashboardScreenState(isConnected: $isConnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardScreenStateImpl &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardScreenStateImplCopyWith<_$DashboardScreenStateImpl>
      get copyWith =>
          __$$DashboardScreenStateImplCopyWithImpl<_$DashboardScreenStateImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardScreenStateImplToJson(
      this,
    );
  }
}

abstract class _DashboardScreenState implements DashboardScreenState {
  factory _DashboardScreenState({final bool? isConnected}) =
      _$DashboardScreenStateImpl;

  factory _DashboardScreenState.fromJson(Map<String, dynamic> json) =
      _$DashboardScreenStateImpl.fromJson;

  @override
  bool? get isConnected;
  @override
  @JsonKey(ignore: true)
  _$$DashboardScreenStateImplCopyWith<_$DashboardScreenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
