// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserEvent,
    required TResult Function() getUserGroups,
    required TResult Function(
            String email, String name, String phone, String photoPath)
        updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserEvent,
    TResult? Function()? getUserGroups,
    TResult? Function(
            String email, String name, String phone, String photoPath)?
        updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserEvent,
    TResult Function()? getUserGroups,
    TResult Function(String email, String name, String phone, String photoPath)?
        updateUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(GetUserGroupsEvent value) getUserGroups,
    required TResult Function(UpdateUserDataEvent value) updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(GetUserGroupsEvent value)? getUserGroups,
    TResult? Function(UpdateUserDataEvent value)? updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(GetUserGroupsEvent value)? getUserGroups,
    TResult Function(UpdateUserDataEvent value)? updateUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUserEventImplCopyWith<$Res> {
  factory _$$GetUserEventImplCopyWith(
          _$GetUserEventImpl value, $Res Function(_$GetUserEventImpl) then) =
      __$$GetUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserEventImpl>
    implements _$$GetUserEventImplCopyWith<$Res> {
  __$$GetUserEventImplCopyWithImpl(
      _$GetUserEventImpl _value, $Res Function(_$GetUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserEventImpl with DiagnosticableTreeMixin implements GetUserEvent {
  const _$GetUserEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.getUserEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserEvent.getUserEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserEvent,
    required TResult Function() getUserGroups,
    required TResult Function(
            String email, String name, String phone, String photoPath)
        updateUserData,
  }) {
    return getUserEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserEvent,
    TResult? Function()? getUserGroups,
    TResult? Function(
            String email, String name, String phone, String photoPath)?
        updateUserData,
  }) {
    return getUserEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserEvent,
    TResult Function()? getUserGroups,
    TResult Function(String email, String name, String phone, String photoPath)?
        updateUserData,
    required TResult orElse(),
  }) {
    if (getUserEvent != null) {
      return getUserEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(GetUserGroupsEvent value) getUserGroups,
    required TResult Function(UpdateUserDataEvent value) updateUserData,
  }) {
    return getUserEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(GetUserGroupsEvent value)? getUserGroups,
    TResult? Function(UpdateUserDataEvent value)? updateUserData,
  }) {
    return getUserEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(GetUserGroupsEvent value)? getUserGroups,
    TResult Function(UpdateUserDataEvent value)? updateUserData,
    required TResult orElse(),
  }) {
    if (getUserEvent != null) {
      return getUserEvent(this);
    }
    return orElse();
  }
}

abstract class GetUserEvent implements UserEvent {
  const factory GetUserEvent() = _$GetUserEventImpl;
}

/// @nodoc
abstract class _$$GetUserGroupsEventImplCopyWith<$Res> {
  factory _$$GetUserGroupsEventImplCopyWith(_$GetUserGroupsEventImpl value,
          $Res Function(_$GetUserGroupsEventImpl) then) =
      __$$GetUserGroupsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserGroupsEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserGroupsEventImpl>
    implements _$$GetUserGroupsEventImplCopyWith<$Res> {
  __$$GetUserGroupsEventImplCopyWithImpl(_$GetUserGroupsEventImpl _value,
      $Res Function(_$GetUserGroupsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserGroupsEventImpl
    with DiagnosticableTreeMixin
    implements GetUserGroupsEvent {
  const _$GetUserGroupsEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.getUserGroups()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserEvent.getUserGroups'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserGroupsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserEvent,
    required TResult Function() getUserGroups,
    required TResult Function(
            String email, String name, String phone, String photoPath)
        updateUserData,
  }) {
    return getUserGroups();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserEvent,
    TResult? Function()? getUserGroups,
    TResult? Function(
            String email, String name, String phone, String photoPath)?
        updateUserData,
  }) {
    return getUserGroups?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserEvent,
    TResult Function()? getUserGroups,
    TResult Function(String email, String name, String phone, String photoPath)?
        updateUserData,
    required TResult orElse(),
  }) {
    if (getUserGroups != null) {
      return getUserGroups();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(GetUserGroupsEvent value) getUserGroups,
    required TResult Function(UpdateUserDataEvent value) updateUserData,
  }) {
    return getUserGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(GetUserGroupsEvent value)? getUserGroups,
    TResult? Function(UpdateUserDataEvent value)? updateUserData,
  }) {
    return getUserGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(GetUserGroupsEvent value)? getUserGroups,
    TResult Function(UpdateUserDataEvent value)? updateUserData,
    required TResult orElse(),
  }) {
    if (getUserGroups != null) {
      return getUserGroups(this);
    }
    return orElse();
  }
}

abstract class GetUserGroupsEvent implements UserEvent {
  const factory GetUserGroupsEvent() = _$GetUserGroupsEventImpl;
}

/// @nodoc
abstract class _$$UpdateUserDataEventImplCopyWith<$Res> {
  factory _$$UpdateUserDataEventImplCopyWith(_$UpdateUserDataEventImpl value,
          $Res Function(_$UpdateUserDataEventImpl) then) =
      __$$UpdateUserDataEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String name, String phone, String photoPath});
}

/// @nodoc
class __$$UpdateUserDataEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UpdateUserDataEventImpl>
    implements _$$UpdateUserDataEventImplCopyWith<$Res> {
  __$$UpdateUserDataEventImplCopyWithImpl(_$UpdateUserDataEventImpl _value,
      $Res Function(_$UpdateUserDataEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? phone = null,
    Object? photoPath = null,
  }) {
    return _then(_$UpdateUserDataEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      photoPath: null == photoPath
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateUserDataEventImpl
    with DiagnosticableTreeMixin
    implements UpdateUserDataEvent {
  const _$UpdateUserDataEventImpl(
      {required this.email,
      required this.name,
      required this.phone,
      required this.photoPath});

  @override
  final String email;
  @override
  final String name;
  @override
  final String phone;
  @override
  final String photoPath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.updateUserData(email: $email, name: $name, phone: $phone, photoPath: $photoPath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.updateUserData'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('photoPath', photoPath));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserDataEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.photoPath, photoPath) ||
                other.photoPath == photoPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, name, phone, photoPath);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserDataEventImplCopyWith<_$UpdateUserDataEventImpl> get copyWith =>
      __$$UpdateUserDataEventImplCopyWithImpl<_$UpdateUserDataEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserEvent,
    required TResult Function() getUserGroups,
    required TResult Function(
            String email, String name, String phone, String photoPath)
        updateUserData,
  }) {
    return updateUserData(email, name, phone, photoPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserEvent,
    TResult? Function()? getUserGroups,
    TResult? Function(
            String email, String name, String phone, String photoPath)?
        updateUserData,
  }) {
    return updateUserData?.call(email, name, phone, photoPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserEvent,
    TResult Function()? getUserGroups,
    TResult Function(String email, String name, String phone, String photoPath)?
        updateUserData,
    required TResult orElse(),
  }) {
    if (updateUserData != null) {
      return updateUserData(email, name, phone, photoPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserEvent value) getUserEvent,
    required TResult Function(GetUserGroupsEvent value) getUserGroups,
    required TResult Function(UpdateUserDataEvent value) updateUserData,
  }) {
    return updateUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserEvent value)? getUserEvent,
    TResult? Function(GetUserGroupsEvent value)? getUserGroups,
    TResult? Function(UpdateUserDataEvent value)? updateUserData,
  }) {
    return updateUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserEvent value)? getUserEvent,
    TResult Function(GetUserGroupsEvent value)? getUserGroups,
    TResult Function(UpdateUserDataEvent value)? updateUserData,
    required TResult orElse(),
  }) {
    if (updateUserData != null) {
      return updateUserData(this);
    }
    return orElse();
  }
}

abstract class UpdateUserDataEvent implements UserEvent {
  const factory UpdateUserDataEvent(
      {required final String email,
      required final String name,
      required final String phone,
      required final String photoPath}) = _$UpdateUserDataEventImpl;

  String get email;
  String get name;
  String get phone;
  String get photoPath;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserDataEventImplCopyWith<_$UpdateUserDataEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  User? get user => throw _privateConstructorUsedError;
  List<Group>? get userGroup => throw _privateConstructorUsedError;
  UserStatus get userStatus => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {User? user,
      List<Group>? userGroup,
      UserStatus userStatus,
      String? error});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? userGroup = freezed,
    Object? userStatus = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userGroup: freezed == userGroup
          ? _value.userGroup
          : userGroup // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
      userStatus: null == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User? user,
      List<Group>? userGroup,
      UserStatus userStatus,
      String? error});
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? userGroup = freezed,
    Object? userStatus = null,
    Object? error = freezed,
  }) {
    return _then(_$UserStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userGroup: freezed == userGroup
          ? _value._userGroup
          : userGroup // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
      userStatus: null == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserStateImpl with DiagnosticableTreeMixin implements _UserState {
  const _$UserStateImpl(
      {this.user,
      final List<Group>? userGroup,
      this.userStatus = UserStatus.initial,
      this.error})
      : _userGroup = userGroup;

  @override
  final User? user;
  final List<Group>? _userGroup;
  @override
  List<Group>? get userGroup {
    final value = _userGroup;
    if (value == null) return null;
    if (_userGroup is EqualUnmodifiableListView) return _userGroup;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final UserStatus userStatus;
  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState(user: $user, userGroup: $userGroup, userStatus: $userStatus, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('userGroup', userGroup))
      ..add(DiagnosticsProperty('userStatus', userStatus))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._userGroup, _userGroup) &&
            (identical(other.userStatus, userStatus) ||
                other.userStatus == userStatus) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user,
      const DeepCollectionEquality().hash(_userGroup), userStatus, error);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {final User? user,
      final List<Group>? userGroup,
      final UserStatus userStatus,
      final String? error}) = _$UserStateImpl;

  @override
  User? get user;
  @override
  List<Group>? get userGroup;
  @override
  UserStatus get userStatus;
  @override
  String? get error;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
