// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_user_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminUserManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllUsersEvent value) getAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllUsersEvent value)? getAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllUsersEvent value)? getAllUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminUserManagementEventCopyWith<$Res> {
  factory $AdminUserManagementEventCopyWith(AdminUserManagementEvent value,
          $Res Function(AdminUserManagementEvent) then) =
      _$AdminUserManagementEventCopyWithImpl<$Res, AdminUserManagementEvent>;
}

/// @nodoc
class _$AdminUserManagementEventCopyWithImpl<$Res,
        $Val extends AdminUserManagementEvent>
    implements $AdminUserManagementEventCopyWith<$Res> {
  _$AdminUserManagementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminUserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllUsersEventImplCopyWith<$Res> {
  factory _$$GetAllUsersEventImplCopyWith(_$GetAllUsersEventImpl value,
          $Res Function(_$GetAllUsersEventImpl) then) =
      __$$GetAllUsersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllUsersEventImplCopyWithImpl<$Res>
    extends _$AdminUserManagementEventCopyWithImpl<$Res, _$GetAllUsersEventImpl>
    implements _$$GetAllUsersEventImplCopyWith<$Res> {
  __$$GetAllUsersEventImplCopyWithImpl(_$GetAllUsersEventImpl _value,
      $Res Function(_$GetAllUsersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminUserManagementEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllUsersEventImpl implements GetAllUsersEvent {
  const _$GetAllUsersEventImpl();

  @override
  String toString() {
    return 'AdminUserManagementEvent.getAllUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllUsersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllUsers,
  }) {
    return getAllUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllUsers,
  }) {
    return getAllUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllUsers,
    required TResult orElse(),
  }) {
    if (getAllUsers != null) {
      return getAllUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllUsersEvent value) getAllUsers,
  }) {
    return getAllUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllUsersEvent value)? getAllUsers,
  }) {
    return getAllUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllUsersEvent value)? getAllUsers,
    required TResult orElse(),
  }) {
    if (getAllUsers != null) {
      return getAllUsers(this);
    }
    return orElse();
  }
}

abstract class GetAllUsersEvent implements AdminUserManagementEvent {
  const factory GetAllUsersEvent() = _$GetAllUsersEventImpl;
}

/// @nodoc
mixin _$AdminUserManagementState {
  List<User>? get users => throw _privateConstructorUsedError;
  AdminUserManagementStatus get adminUserManagementStatus =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of AdminUserManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminUserManagementStateCopyWith<AdminUserManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminUserManagementStateCopyWith<$Res> {
  factory $AdminUserManagementStateCopyWith(AdminUserManagementState value,
          $Res Function(AdminUserManagementState) then) =
      _$AdminUserManagementStateCopyWithImpl<$Res, AdminUserManagementState>;
  @useResult
  $Res call(
      {List<User>? users,
      AdminUserManagementStatus adminUserManagementStatus,
      String? error});
}

/// @nodoc
class _$AdminUserManagementStateCopyWithImpl<$Res,
        $Val extends AdminUserManagementState>
    implements $AdminUserManagementStateCopyWith<$Res> {
  _$AdminUserManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminUserManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
    Object? adminUserManagementStatus = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      adminUserManagementStatus: null == adminUserManagementStatus
          ? _value.adminUserManagementStatus
          : adminUserManagementStatus // ignore: cast_nullable_to_non_nullable
              as AdminUserManagementStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminUserManagementStateImplCopyWith<$Res>
    implements $AdminUserManagementStateCopyWith<$Res> {
  factory _$$AdminUserManagementStateImplCopyWith(
          _$AdminUserManagementStateImpl value,
          $Res Function(_$AdminUserManagementStateImpl) then) =
      __$$AdminUserManagementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<User>? users,
      AdminUserManagementStatus adminUserManagementStatus,
      String? error});
}

/// @nodoc
class __$$AdminUserManagementStateImplCopyWithImpl<$Res>
    extends _$AdminUserManagementStateCopyWithImpl<$Res,
        _$AdminUserManagementStateImpl>
    implements _$$AdminUserManagementStateImplCopyWith<$Res> {
  __$$AdminUserManagementStateImplCopyWithImpl(
      _$AdminUserManagementStateImpl _value,
      $Res Function(_$AdminUserManagementStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminUserManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
    Object? adminUserManagementStatus = null,
    Object? error = freezed,
  }) {
    return _then(_$AdminUserManagementStateImpl(
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      adminUserManagementStatus: null == adminUserManagementStatus
          ? _value.adminUserManagementStatus
          : adminUserManagementStatus // ignore: cast_nullable_to_non_nullable
              as AdminUserManagementStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AdminUserManagementStateImpl implements _AdminUserManagementState {
  const _$AdminUserManagementStateImpl(
      {final List<User>? users,
      this.adminUserManagementStatus = AdminUserManagementStatus.initial,
      this.error})
      : _users = users;

  final List<User>? _users;
  @override
  List<User>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final AdminUserManagementStatus adminUserManagementStatus;
  @override
  final String? error;

  @override
  String toString() {
    return 'AdminUserManagementState(users: $users, adminUserManagementStatus: $adminUserManagementStatus, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminUserManagementStateImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.adminUserManagementStatus,
                    adminUserManagementStatus) ||
                other.adminUserManagementStatus == adminUserManagementStatus) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      adminUserManagementStatus,
      error);

  /// Create a copy of AdminUserManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminUserManagementStateImplCopyWith<_$AdminUserManagementStateImpl>
      get copyWith => __$$AdminUserManagementStateImplCopyWithImpl<
          _$AdminUserManagementStateImpl>(this, _$identity);
}

abstract class _AdminUserManagementState implements AdminUserManagementState {
  const factory _AdminUserManagementState(
      {final List<User>? users,
      final AdminUserManagementStatus adminUserManagementStatus,
      final String? error}) = _$AdminUserManagementStateImpl;

  @override
  List<User>? get users;
  @override
  AdminUserManagementStatus get adminUserManagementStatus;
  @override
  String? get error;

  /// Create a copy of AdminUserManagementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminUserManagementStateImplCopyWith<_$AdminUserManagementStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
