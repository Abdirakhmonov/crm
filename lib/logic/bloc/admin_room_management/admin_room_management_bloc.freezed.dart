// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_room_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminRoomManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllRooms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminGetAllRoomsEvent value) getAllRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminGetAllRoomsEvent value)? getAllRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminGetAllRoomsEvent value)? getAllRooms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminRoomManagementEventCopyWith<$Res> {
  factory $AdminRoomManagementEventCopyWith(AdminRoomManagementEvent value,
          $Res Function(AdminRoomManagementEvent) then) =
      _$AdminRoomManagementEventCopyWithImpl<$Res, AdminRoomManagementEvent>;
}

/// @nodoc
class _$AdminRoomManagementEventCopyWithImpl<$Res,
        $Val extends AdminRoomManagementEvent>
    implements $AdminRoomManagementEventCopyWith<$Res> {
  _$AdminRoomManagementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminRoomManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AdminGetAllRoomsEventImplCopyWith<$Res> {
  factory _$$AdminGetAllRoomsEventImplCopyWith(
          _$AdminGetAllRoomsEventImpl value,
          $Res Function(_$AdminGetAllRoomsEventImpl) then) =
      __$$AdminGetAllRoomsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AdminGetAllRoomsEventImplCopyWithImpl<$Res>
    extends _$AdminRoomManagementEventCopyWithImpl<$Res,
        _$AdminGetAllRoomsEventImpl>
    implements _$$AdminGetAllRoomsEventImplCopyWith<$Res> {
  __$$AdminGetAllRoomsEventImplCopyWithImpl(_$AdminGetAllRoomsEventImpl _value,
      $Res Function(_$AdminGetAllRoomsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminRoomManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AdminGetAllRoomsEventImpl implements AdminGetAllRoomsEvent {
  const _$AdminGetAllRoomsEventImpl();

  @override
  String toString() {
    return 'AdminRoomManagementEvent.getAllRooms()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminGetAllRoomsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllRooms,
  }) {
    return getAllRooms();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllRooms,
  }) {
    return getAllRooms?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllRooms,
    required TResult orElse(),
  }) {
    if (getAllRooms != null) {
      return getAllRooms();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminGetAllRoomsEvent value) getAllRooms,
  }) {
    return getAllRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminGetAllRoomsEvent value)? getAllRooms,
  }) {
    return getAllRooms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminGetAllRoomsEvent value)? getAllRooms,
    required TResult orElse(),
  }) {
    if (getAllRooms != null) {
      return getAllRooms(this);
    }
    return orElse();
  }
}

abstract class AdminGetAllRoomsEvent implements AdminRoomManagementEvent {
  const factory AdminGetAllRoomsEvent() = _$AdminGetAllRoomsEventImpl;
}

/// @nodoc
mixin _$AdminRoomManagementState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Room> rooms) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Room> rooms)? loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Room> rooms)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminRoomManagementInitial value) initial,
    required TResult Function(AdminRoomLoading value) loading,
    required TResult Function(AdminRoomLoaded value) loaded,
    required TResult Function(AdminRoomError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminRoomManagementInitial value)? initial,
    TResult? Function(AdminRoomLoading value)? loading,
    TResult? Function(AdminRoomLoaded value)? loaded,
    TResult? Function(AdminRoomError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminRoomManagementInitial value)? initial,
    TResult Function(AdminRoomLoading value)? loading,
    TResult Function(AdminRoomLoaded value)? loaded,
    TResult Function(AdminRoomError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminRoomManagementStateCopyWith<$Res> {
  factory $AdminRoomManagementStateCopyWith(AdminRoomManagementState value,
          $Res Function(AdminRoomManagementState) then) =
      _$AdminRoomManagementStateCopyWithImpl<$Res, AdminRoomManagementState>;
}

/// @nodoc
class _$AdminRoomManagementStateCopyWithImpl<$Res,
        $Val extends AdminRoomManagementState>
    implements $AdminRoomManagementStateCopyWith<$Res> {
  _$AdminRoomManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminRoomManagementState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AdminRoomManagementInitialImplCopyWith<$Res> {
  factory _$$AdminRoomManagementInitialImplCopyWith(
          _$AdminRoomManagementInitialImpl value,
          $Res Function(_$AdminRoomManagementInitialImpl) then) =
      __$$AdminRoomManagementInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AdminRoomManagementInitialImplCopyWithImpl<$Res>
    extends _$AdminRoomManagementStateCopyWithImpl<$Res,
        _$AdminRoomManagementInitialImpl>
    implements _$$AdminRoomManagementInitialImplCopyWith<$Res> {
  __$$AdminRoomManagementInitialImplCopyWithImpl(
      _$AdminRoomManagementInitialImpl _value,
      $Res Function(_$AdminRoomManagementInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminRoomManagementState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AdminRoomManagementInitialImpl implements AdminRoomManagementInitial {
  const _$AdminRoomManagementInitialImpl();

  @override
  String toString() {
    return 'AdminRoomManagementState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminRoomManagementInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Room> rooms) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Room> rooms)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Room> rooms)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminRoomManagementInitial value) initial,
    required TResult Function(AdminRoomLoading value) loading,
    required TResult Function(AdminRoomLoaded value) loaded,
    required TResult Function(AdminRoomError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminRoomManagementInitial value)? initial,
    TResult? Function(AdminRoomLoading value)? loading,
    TResult? Function(AdminRoomLoaded value)? loaded,
    TResult? Function(AdminRoomError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminRoomManagementInitial value)? initial,
    TResult Function(AdminRoomLoading value)? loading,
    TResult Function(AdminRoomLoaded value)? loaded,
    TResult Function(AdminRoomError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AdminRoomManagementInitial implements AdminRoomManagementState {
  const factory AdminRoomManagementInitial() = _$AdminRoomManagementInitialImpl;
}

/// @nodoc
abstract class _$$AdminRoomLoadingImplCopyWith<$Res> {
  factory _$$AdminRoomLoadingImplCopyWith(_$AdminRoomLoadingImpl value,
          $Res Function(_$AdminRoomLoadingImpl) then) =
      __$$AdminRoomLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AdminRoomLoadingImplCopyWithImpl<$Res>
    extends _$AdminRoomManagementStateCopyWithImpl<$Res, _$AdminRoomLoadingImpl>
    implements _$$AdminRoomLoadingImplCopyWith<$Res> {
  __$$AdminRoomLoadingImplCopyWithImpl(_$AdminRoomLoadingImpl _value,
      $Res Function(_$AdminRoomLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminRoomManagementState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AdminRoomLoadingImpl implements AdminRoomLoading {
  const _$AdminRoomLoadingImpl();

  @override
  String toString() {
    return 'AdminRoomManagementState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AdminRoomLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Room> rooms) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Room> rooms)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Room> rooms)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminRoomManagementInitial value) initial,
    required TResult Function(AdminRoomLoading value) loading,
    required TResult Function(AdminRoomLoaded value) loaded,
    required TResult Function(AdminRoomError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminRoomManagementInitial value)? initial,
    TResult? Function(AdminRoomLoading value)? loading,
    TResult? Function(AdminRoomLoaded value)? loaded,
    TResult? Function(AdminRoomError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminRoomManagementInitial value)? initial,
    TResult Function(AdminRoomLoading value)? loading,
    TResult Function(AdminRoomLoaded value)? loaded,
    TResult Function(AdminRoomError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AdminRoomLoading implements AdminRoomManagementState {
  const factory AdminRoomLoading() = _$AdminRoomLoadingImpl;
}

/// @nodoc
abstract class _$$AdminRoomLoadedImplCopyWith<$Res> {
  factory _$$AdminRoomLoadedImplCopyWith(_$AdminRoomLoadedImpl value,
          $Res Function(_$AdminRoomLoadedImpl) then) =
      __$$AdminRoomLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Room> rooms});
}

/// @nodoc
class __$$AdminRoomLoadedImplCopyWithImpl<$Res>
    extends _$AdminRoomManagementStateCopyWithImpl<$Res, _$AdminRoomLoadedImpl>
    implements _$$AdminRoomLoadedImplCopyWith<$Res> {
  __$$AdminRoomLoadedImplCopyWithImpl(
      _$AdminRoomLoadedImpl _value, $Res Function(_$AdminRoomLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminRoomManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$AdminRoomLoadedImpl(
      null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ));
  }
}

/// @nodoc

class _$AdminRoomLoadedImpl implements AdminRoomLoaded {
  const _$AdminRoomLoadedImpl(final List<Room> rooms) : _rooms = rooms;

  final List<Room> _rooms;
  @override
  List<Room> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'AdminRoomManagementState.loaded(rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminRoomLoadedImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  /// Create a copy of AdminRoomManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminRoomLoadedImplCopyWith<_$AdminRoomLoadedImpl> get copyWith =>
      __$$AdminRoomLoadedImplCopyWithImpl<_$AdminRoomLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Room> rooms) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Room> rooms)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Room> rooms)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminRoomManagementInitial value) initial,
    required TResult Function(AdminRoomLoading value) loading,
    required TResult Function(AdminRoomLoaded value) loaded,
    required TResult Function(AdminRoomError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminRoomManagementInitial value)? initial,
    TResult? Function(AdminRoomLoading value)? loading,
    TResult? Function(AdminRoomLoaded value)? loaded,
    TResult? Function(AdminRoomError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminRoomManagementInitial value)? initial,
    TResult Function(AdminRoomLoading value)? loading,
    TResult Function(AdminRoomLoaded value)? loaded,
    TResult Function(AdminRoomError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AdminRoomLoaded implements AdminRoomManagementState {
  const factory AdminRoomLoaded(final List<Room> rooms) = _$AdminRoomLoadedImpl;

  List<Room> get rooms;

  /// Create a copy of AdminRoomManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminRoomLoadedImplCopyWith<_$AdminRoomLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AdminRoomErrorImplCopyWith<$Res> {
  factory _$$AdminRoomErrorImplCopyWith(_$AdminRoomErrorImpl value,
          $Res Function(_$AdminRoomErrorImpl) then) =
      __$$AdminRoomErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$AdminRoomErrorImplCopyWithImpl<$Res>
    extends _$AdminRoomManagementStateCopyWithImpl<$Res, _$AdminRoomErrorImpl>
    implements _$$AdminRoomErrorImplCopyWith<$Res> {
  __$$AdminRoomErrorImplCopyWithImpl(
      _$AdminRoomErrorImpl _value, $Res Function(_$AdminRoomErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminRoomManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$AdminRoomErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AdminRoomErrorImpl implements AdminRoomError {
  const _$AdminRoomErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdminRoomManagementState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminRoomErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AdminRoomManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminRoomErrorImplCopyWith<_$AdminRoomErrorImpl> get copyWith =>
      __$$AdminRoomErrorImplCopyWithImpl<_$AdminRoomErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Room> rooms) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Room> rooms)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Room> rooms)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminRoomManagementInitial value) initial,
    required TResult Function(AdminRoomLoading value) loading,
    required TResult Function(AdminRoomLoaded value) loaded,
    required TResult Function(AdminRoomError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminRoomManagementInitial value)? initial,
    TResult? Function(AdminRoomLoading value)? loading,
    TResult? Function(AdminRoomLoaded value)? loaded,
    TResult? Function(AdminRoomError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminRoomManagementInitial value)? initial,
    TResult Function(AdminRoomLoading value)? loading,
    TResult Function(AdminRoomLoaded value)? loaded,
    TResult Function(AdminRoomError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AdminRoomError implements AdminRoomManagementState {
  const factory AdminRoomError(final String errorMessage) =
      _$AdminRoomErrorImpl;

  String get errorMessage;

  /// Create a copy of AdminRoomManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminRoomErrorImplCopyWith<_$AdminRoomErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
