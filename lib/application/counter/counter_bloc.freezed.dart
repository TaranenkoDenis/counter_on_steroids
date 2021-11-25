// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'counter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CounterEventTearOff {
  const _$CounterEventTearOff();

  _Incremented incremented() {
    return const _Incremented();
  }

  _Decremented decremented() {
    return const _Decremented();
  }
}

/// @nodoc
const $CounterEvent = _$CounterEventTearOff();

/// @nodoc
mixin _$CounterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incremented,
    required TResult Function() decremented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? incremented,
    TResult Function()? decremented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incremented,
    TResult Function()? decremented,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Incremented value) incremented,
    required TResult Function(_Decremented value) decremented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Incremented value)? incremented,
    TResult Function(_Decremented value)? decremented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Incremented value)? incremented,
    TResult Function(_Decremented value)? decremented,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterEventCopyWith<$Res> {
  factory $CounterEventCopyWith(
          CounterEvent value, $Res Function(CounterEvent) then) =
      _$CounterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounterEventCopyWithImpl<$Res> implements $CounterEventCopyWith<$Res> {
  _$CounterEventCopyWithImpl(this._value, this._then);

  final CounterEvent _value;
  // ignore: unused_field
  final $Res Function(CounterEvent) _then;
}

/// @nodoc
abstract class _$IncrementedCopyWith<$Res> {
  factory _$IncrementedCopyWith(
          _Incremented value, $Res Function(_Incremented) then) =
      __$IncrementedCopyWithImpl<$Res>;
}

/// @nodoc
class __$IncrementedCopyWithImpl<$Res> extends _$CounterEventCopyWithImpl<$Res>
    implements _$IncrementedCopyWith<$Res> {
  __$IncrementedCopyWithImpl(
      _Incremented _value, $Res Function(_Incremented) _then)
      : super(_value, (v) => _then(v as _Incremented));

  @override
  _Incremented get _value => super._value as _Incremented;
}

/// @nodoc

class _$_Incremented implements _Incremented {
  const _$_Incremented();

  @override
  String toString() {
    return 'CounterEvent.incremented()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Incremented);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incremented,
    required TResult Function() decremented,
  }) {
    return incremented();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? incremented,
    TResult Function()? decremented,
  }) {
    return incremented?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incremented,
    TResult Function()? decremented,
    required TResult orElse(),
  }) {
    if (incremented != null) {
      return incremented();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Incremented value) incremented,
    required TResult Function(_Decremented value) decremented,
  }) {
    return incremented(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Incremented value)? incremented,
    TResult Function(_Decremented value)? decremented,
  }) {
    return incremented?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Incremented value)? incremented,
    TResult Function(_Decremented value)? decremented,
    required TResult orElse(),
  }) {
    if (incremented != null) {
      return incremented(this);
    }
    return orElse();
  }
}

abstract class _Incremented implements CounterEvent {
  const factory _Incremented() = _$_Incremented;
}

/// @nodoc
abstract class _$DecrementedCopyWith<$Res> {
  factory _$DecrementedCopyWith(
          _Decremented value, $Res Function(_Decremented) then) =
      __$DecrementedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DecrementedCopyWithImpl<$Res> extends _$CounterEventCopyWithImpl<$Res>
    implements _$DecrementedCopyWith<$Res> {
  __$DecrementedCopyWithImpl(
      _Decremented _value, $Res Function(_Decremented) _then)
      : super(_value, (v) => _then(v as _Decremented));

  @override
  _Decremented get _value => super._value as _Decremented;
}

/// @nodoc

class _$_Decremented implements _Decremented {
  const _$_Decremented();

  @override
  String toString() {
    return 'CounterEvent.decremented()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Decremented);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incremented,
    required TResult Function() decremented,
  }) {
    return decremented();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? incremented,
    TResult Function()? decremented,
  }) {
    return decremented?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incremented,
    TResult Function()? decremented,
    required TResult orElse(),
  }) {
    if (decremented != null) {
      return decremented();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Incremented value) incremented,
    required TResult Function(_Decremented value) decremented,
  }) {
    return decremented(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Incremented value)? incremented,
    TResult Function(_Decremented value)? decremented,
  }) {
    return decremented?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Incremented value)? incremented,
    TResult Function(_Decremented value)? decremented,
    required TResult orElse(),
  }) {
    if (decremented != null) {
      return decremented(this);
    }
    return orElse();
  }
}

abstract class _Decremented implements CounterEvent {
  const factory _Decremented() = _$_Decremented;
}
