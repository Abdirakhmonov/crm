// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SocialLoginTypes type) socialLogin,
    required TResult Function(String phoneNumber, String password) loginUser,
    required TResult Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)
        registerUser,
    required TResult Function(String phoneNumber) resetPassword,
    required TResult Function() checkTokenExpiry,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SocialLoginTypes type)? socialLogin,
    TResult? Function(String phoneNumber, String password)? loginUser,
    TResult? Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)?
        registerUser,
    TResult? Function(String phoneNumber)? resetPassword,
    TResult? Function()? checkTokenExpiry,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocialLoginTypes type)? socialLogin,
    TResult Function(String phoneNumber, String password)? loginUser,
    TResult Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)?
        registerUser,
    TResult Function(String phoneNumber)? resetPassword,
    TResult Function()? checkTokenExpiry,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialLoginEvent value) socialLogin,
    required TResult Function(LoginUserEvent value) loginUser,
    required TResult Function(RegisterUserEvent value) registerUser,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(CheckTokenExpiryEvent value) checkTokenExpiry,
    required TResult Function(LogoutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialLoginEvent value)? socialLogin,
    TResult? Function(LoginUserEvent value)? loginUser,
    TResult? Function(RegisterUserEvent value)? registerUser,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult? Function(LogoutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialLoginEvent value)? socialLogin,
    TResult Function(LoginUserEvent value)? loginUser,
    TResult Function(RegisterUserEvent value)? registerUser,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SocialLoginEventImplCopyWith<$Res> {
  factory _$$SocialLoginEventImplCopyWith(_$SocialLoginEventImpl value,
          $Res Function(_$SocialLoginEventImpl) then) =
      __$$SocialLoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SocialLoginTypes type});
}

/// @nodoc
class __$$SocialLoginEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SocialLoginEventImpl>
    implements _$$SocialLoginEventImplCopyWith<$Res> {
  __$$SocialLoginEventImplCopyWithImpl(_$SocialLoginEventImpl _value,
      $Res Function(_$SocialLoginEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$SocialLoginEventImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SocialLoginTypes,
    ));
  }
}

/// @nodoc

class _$SocialLoginEventImpl implements SocialLoginEvent {
  const _$SocialLoginEventImpl({this.type = SocialLoginTypes.google});

  @override
  @JsonKey()
  final SocialLoginTypes type;

  @override
  String toString() {
    return 'AuthEvent.socialLogin(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialLoginEventImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialLoginEventImplCopyWith<_$SocialLoginEventImpl> get copyWith =>
      __$$SocialLoginEventImplCopyWithImpl<_$SocialLoginEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SocialLoginTypes type) socialLogin,
    required TResult Function(String phoneNumber, String password) loginUser,
    required TResult Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)
        registerUser,
    required TResult Function(String phoneNumber) resetPassword,
    required TResult Function() checkTokenExpiry,
    required TResult Function() logout,
  }) {
    return socialLogin(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SocialLoginTypes type)? socialLogin,
    TResult? Function(String phoneNumber, String password)? loginUser,
    TResult? Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)?
        registerUser,
    TResult? Function(String phoneNumber)? resetPassword,
    TResult? Function()? checkTokenExpiry,
    TResult? Function()? logout,
  }) {
    return socialLogin?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocialLoginTypes type)? socialLogin,
    TResult Function(String phoneNumber, String password)? loginUser,
    TResult Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)?
        registerUser,
    TResult Function(String phoneNumber)? resetPassword,
    TResult Function()? checkTokenExpiry,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (socialLogin != null) {
      return socialLogin(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialLoginEvent value) socialLogin,
    required TResult Function(LoginUserEvent value) loginUser,
    required TResult Function(RegisterUserEvent value) registerUser,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(CheckTokenExpiryEvent value) checkTokenExpiry,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return socialLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialLoginEvent value)? socialLogin,
    TResult? Function(LoginUserEvent value)? loginUser,
    TResult? Function(RegisterUserEvent value)? registerUser,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return socialLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialLoginEvent value)? socialLogin,
    TResult Function(LoginUserEvent value)? loginUser,
    TResult Function(RegisterUserEvent value)? registerUser,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (socialLogin != null) {
      return socialLogin(this);
    }
    return orElse();
  }
}

abstract class SocialLoginEvent implements AuthEvent {
  const factory SocialLoginEvent({final SocialLoginTypes type}) =
      _$SocialLoginEventImpl;

  SocialLoginTypes get type;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialLoginEventImplCopyWith<_$SocialLoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginUserEventImplCopyWith<$Res> {
  factory _$$LoginUserEventImplCopyWith(_$LoginUserEventImpl value,
          $Res Function(_$LoginUserEventImpl) then) =
      __$$LoginUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, String password});
}

/// @nodoc
class __$$LoginUserEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginUserEventImpl>
    implements _$$LoginUserEventImplCopyWith<$Res> {
  __$$LoginUserEventImplCopyWithImpl(
      _$LoginUserEventImpl _value, $Res Function(_$LoginUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? password = null,
  }) {
    return _then(_$LoginUserEventImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginUserEventImpl implements LoginUserEvent {
  const _$LoginUserEventImpl(
      {required this.phoneNumber, required this.password});

  @override
  final String phoneNumber;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginUser(phoneNumber: $phoneNumber, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserEventImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserEventImplCopyWith<_$LoginUserEventImpl> get copyWith =>
      __$$LoginUserEventImplCopyWithImpl<_$LoginUserEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SocialLoginTypes type) socialLogin,
    required TResult Function(String phoneNumber, String password) loginUser,
    required TResult Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)
        registerUser,
    required TResult Function(String phoneNumber) resetPassword,
    required TResult Function() checkTokenExpiry,
    required TResult Function() logout,
  }) {
    return loginUser(phoneNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SocialLoginTypes type)? socialLogin,
    TResult? Function(String phoneNumber, String password)? loginUser,
    TResult? Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)?
        registerUser,
    TResult? Function(String phoneNumber)? resetPassword,
    TResult? Function()? checkTokenExpiry,
    TResult? Function()? logout,
  }) {
    return loginUser?.call(phoneNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocialLoginTypes type)? socialLogin,
    TResult Function(String phoneNumber, String password)? loginUser,
    TResult Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)?
        registerUser,
    TResult Function(String phoneNumber)? resetPassword,
    TResult Function()? checkTokenExpiry,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(phoneNumber, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialLoginEvent value) socialLogin,
    required TResult Function(LoginUserEvent value) loginUser,
    required TResult Function(RegisterUserEvent value) registerUser,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(CheckTokenExpiryEvent value) checkTokenExpiry,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return loginUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialLoginEvent value)? socialLogin,
    TResult? Function(LoginUserEvent value)? loginUser,
    TResult? Function(RegisterUserEvent value)? registerUser,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return loginUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialLoginEvent value)? socialLogin,
    TResult Function(LoginUserEvent value)? loginUser,
    TResult Function(RegisterUserEvent value)? registerUser,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(this);
    }
    return orElse();
  }
}

abstract class LoginUserEvent implements AuthEvent {
  const factory LoginUserEvent(
      {required final String phoneNumber,
      required final String password}) = _$LoginUserEventImpl;

  String get phoneNumber;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginUserEventImplCopyWith<_$LoginUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterUserEventImplCopyWith<$Res> {
  factory _$$RegisterUserEventImplCopyWith(_$RegisterUserEventImpl value,
          $Res Function(_$RegisterUserEventImpl) then) =
      __$$RegisterUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String phoneNumber,
      String password,
      String passwordConfirmation,
      int roleId});
}

/// @nodoc
class __$$RegisterUserEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterUserEventImpl>
    implements _$$RegisterUserEventImplCopyWith<$Res> {
  __$$RegisterUserEventImplCopyWithImpl(_$RegisterUserEventImpl _value,
      $Res Function(_$RegisterUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? passwordConfirmation = null,
    Object? roleId = null,
  }) {
    return _then(_$RegisterUserEventImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RegisterUserEventImpl implements RegisterUserEvent {
  const _$RegisterUserEventImpl(
      {required this.name,
      required this.phoneNumber,
      required this.password,
      required this.passwordConfirmation,
      required this.roleId});

  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String password;
  @override
  final String passwordConfirmation;
  @override
  final int roleId;

  @override
  String toString() {
    return 'AuthEvent.registerUser(name: $name, phoneNumber: $phoneNumber, password: $password, passwordConfirmation: $passwordConfirmation, roleId: $roleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserEventImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation) &&
            (identical(other.roleId, roleId) || other.roleId == roleId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, phoneNumber, password, passwordConfirmation, roleId);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserEventImplCopyWith<_$RegisterUserEventImpl> get copyWith =>
      __$$RegisterUserEventImplCopyWithImpl<_$RegisterUserEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SocialLoginTypes type) socialLogin,
    required TResult Function(String phoneNumber, String password) loginUser,
    required TResult Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)
        registerUser,
    required TResult Function(String phoneNumber) resetPassword,
    required TResult Function() checkTokenExpiry,
    required TResult Function() logout,
  }) {
    return registerUser(
        name, phoneNumber, password, passwordConfirmation, roleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SocialLoginTypes type)? socialLogin,
    TResult? Function(String phoneNumber, String password)? loginUser,
    TResult? Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)?
        registerUser,
    TResult? Function(String phoneNumber)? resetPassword,
    TResult? Function()? checkTokenExpiry,
    TResult? Function()? logout,
  }) {
    return registerUser?.call(
        name, phoneNumber, password, passwordConfirmation, roleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocialLoginTypes type)? socialLogin,
    TResult Function(String phoneNumber, String password)? loginUser,
    TResult Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)?
        registerUser,
    TResult Function(String phoneNumber)? resetPassword,
    TResult Function()? checkTokenExpiry,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(
          name, phoneNumber, password, passwordConfirmation, roleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialLoginEvent value) socialLogin,
    required TResult Function(LoginUserEvent value) loginUser,
    required TResult Function(RegisterUserEvent value) registerUser,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(CheckTokenExpiryEvent value) checkTokenExpiry,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialLoginEvent value)? socialLogin,
    TResult? Function(LoginUserEvent value)? loginUser,
    TResult? Function(RegisterUserEvent value)? registerUser,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialLoginEvent value)? socialLogin,
    TResult Function(LoginUserEvent value)? loginUser,
    TResult Function(RegisterUserEvent value)? registerUser,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class RegisterUserEvent implements AuthEvent {
  const factory RegisterUserEvent(
      {required final String name,
      required final String phoneNumber,
      required final String password,
      required final String passwordConfirmation,
      required final int roleId}) = _$RegisterUserEventImpl;

  String get name;
  String get phoneNumber;
  String get password;
  String get passwordConfirmation;
  int get roleId;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterUserEventImplCopyWith<_$RegisterUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordEventImplCopyWith<$Res> {
  factory _$$ResetPasswordEventImplCopyWith(_$ResetPasswordEventImpl value,
          $Res Function(_$ResetPasswordEventImpl) then) =
      __$$ResetPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$ResetPasswordEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResetPasswordEventImpl>
    implements _$$ResetPasswordEventImplCopyWith<$Res> {
  __$$ResetPasswordEventImplCopyWithImpl(_$ResetPasswordEventImpl _value,
      $Res Function(_$ResetPasswordEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$ResetPasswordEventImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordEventImpl implements ResetPasswordEvent {
  const _$ResetPasswordEventImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthEvent.resetPassword(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordEventImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordEventImplCopyWith<_$ResetPasswordEventImpl> get copyWith =>
      __$$ResetPasswordEventImplCopyWithImpl<_$ResetPasswordEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SocialLoginTypes type) socialLogin,
    required TResult Function(String phoneNumber, String password) loginUser,
    required TResult Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)
        registerUser,
    required TResult Function(String phoneNumber) resetPassword,
    required TResult Function() checkTokenExpiry,
    required TResult Function() logout,
  }) {
    return resetPassword(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SocialLoginTypes type)? socialLogin,
    TResult? Function(String phoneNumber, String password)? loginUser,
    TResult? Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)?
        registerUser,
    TResult? Function(String phoneNumber)? resetPassword,
    TResult? Function()? checkTokenExpiry,
    TResult? Function()? logout,
  }) {
    return resetPassword?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocialLoginTypes type)? socialLogin,
    TResult Function(String phoneNumber, String password)? loginUser,
    TResult Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)?
        registerUser,
    TResult Function(String phoneNumber)? resetPassword,
    TResult Function()? checkTokenExpiry,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialLoginEvent value) socialLogin,
    required TResult Function(LoginUserEvent value) loginUser,
    required TResult Function(RegisterUserEvent value) registerUser,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(CheckTokenExpiryEvent value) checkTokenExpiry,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialLoginEvent value)? socialLogin,
    TResult? Function(LoginUserEvent value)? loginUser,
    TResult? Function(RegisterUserEvent value)? registerUser,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialLoginEvent value)? socialLogin,
    TResult Function(LoginUserEvent value)? loginUser,
    TResult Function(RegisterUserEvent value)? registerUser,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordEvent implements AuthEvent {
  const factory ResetPasswordEvent({required final String phoneNumber}) =
      _$ResetPasswordEventImpl;

  String get phoneNumber;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordEventImplCopyWith<_$ResetPasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckTokenExpiryEventImplCopyWith<$Res> {
  factory _$$CheckTokenExpiryEventImplCopyWith(
          _$CheckTokenExpiryEventImpl value,
          $Res Function(_$CheckTokenExpiryEventImpl) then) =
      __$$CheckTokenExpiryEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckTokenExpiryEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckTokenExpiryEventImpl>
    implements _$$CheckTokenExpiryEventImplCopyWith<$Res> {
  __$$CheckTokenExpiryEventImplCopyWithImpl(_$CheckTokenExpiryEventImpl _value,
      $Res Function(_$CheckTokenExpiryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckTokenExpiryEventImpl implements CheckTokenExpiryEvent {
  const _$CheckTokenExpiryEventImpl();

  @override
  String toString() {
    return 'AuthEvent.checkTokenExpiry()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckTokenExpiryEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SocialLoginTypes type) socialLogin,
    required TResult Function(String phoneNumber, String password) loginUser,
    required TResult Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)
        registerUser,
    required TResult Function(String phoneNumber) resetPassword,
    required TResult Function() checkTokenExpiry,
    required TResult Function() logout,
  }) {
    return checkTokenExpiry();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SocialLoginTypes type)? socialLogin,
    TResult? Function(String phoneNumber, String password)? loginUser,
    TResult? Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)?
        registerUser,
    TResult? Function(String phoneNumber)? resetPassword,
    TResult? Function()? checkTokenExpiry,
    TResult? Function()? logout,
  }) {
    return checkTokenExpiry?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocialLoginTypes type)? socialLogin,
    TResult Function(String phoneNumber, String password)? loginUser,
    TResult Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)?
        registerUser,
    TResult Function(String phoneNumber)? resetPassword,
    TResult Function()? checkTokenExpiry,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (checkTokenExpiry != null) {
      return checkTokenExpiry();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialLoginEvent value) socialLogin,
    required TResult Function(LoginUserEvent value) loginUser,
    required TResult Function(RegisterUserEvent value) registerUser,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(CheckTokenExpiryEvent value) checkTokenExpiry,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return checkTokenExpiry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialLoginEvent value)? socialLogin,
    TResult? Function(LoginUserEvent value)? loginUser,
    TResult? Function(RegisterUserEvent value)? registerUser,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return checkTokenExpiry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialLoginEvent value)? socialLogin,
    TResult Function(LoginUserEvent value)? loginUser,
    TResult Function(RegisterUserEvent value)? registerUser,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (checkTokenExpiry != null) {
      return checkTokenExpiry(this);
    }
    return orElse();
  }
}

abstract class CheckTokenExpiryEvent implements AuthEvent {
  const factory CheckTokenExpiryEvent() = _$CheckTokenExpiryEventImpl;
}

/// @nodoc
abstract class _$$LogoutEventImplCopyWith<$Res> {
  factory _$$LogoutEventImplCopyWith(
          _$LogoutEventImpl value, $Res Function(_$LogoutEventImpl) then) =
      __$$LogoutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutEventImpl>
    implements _$$LogoutEventImplCopyWith<$Res> {
  __$$LogoutEventImplCopyWithImpl(
      _$LogoutEventImpl _value, $Res Function(_$LogoutEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutEventImpl implements LogoutEvent {
  const _$LogoutEventImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SocialLoginTypes type) socialLogin,
    required TResult Function(String phoneNumber, String password) loginUser,
    required TResult Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)
        registerUser,
    required TResult Function(String phoneNumber) resetPassword,
    required TResult Function() checkTokenExpiry,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SocialLoginTypes type)? socialLogin,
    TResult? Function(String phoneNumber, String password)? loginUser,
    TResult? Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)?
        registerUser,
    TResult? Function(String phoneNumber)? resetPassword,
    TResult? Function()? checkTokenExpiry,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocialLoginTypes type)? socialLogin,
    TResult Function(String phoneNumber, String password)? loginUser,
    TResult Function(String name, String phoneNumber, String password,
            String passwordConfirmation, int roleId)?
        registerUser,
    TResult Function(String phoneNumber)? resetPassword,
    TResult Function()? checkTokenExpiry,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialLoginEvent value) socialLogin,
    required TResult Function(LoginUserEvent value) loginUser,
    required TResult Function(RegisterUserEvent value) registerUser,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(CheckTokenExpiryEvent value) checkTokenExpiry,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialLoginEvent value)? socialLogin,
    TResult? Function(LoginUserEvent value)? loginUser,
    TResult? Function(RegisterUserEvent value)? registerUser,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialLoginEvent value)? socialLogin,
    TResult Function(LoginUserEvent value)? loginUser,
    TResult Function(RegisterUserEvent value)? registerUser,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutEvent implements AuthEvent {
  const factory LogoutEvent() = _$LogoutEventImpl;
}

/// @nodoc
mixin _$AuthState {
  User? get user => throw _privateConstructorUsedError;
  AuthStatus get authStatus => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({User? user, AuthStatus authStatus, String? error});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? authStatus = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, AuthStatus authStatus, String? error});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? authStatus = null,
    Object? error = freezed,
  }) {
    return _then(_$AuthStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.user, this.authStatus = AuthStatus.initial, this.error});

  @override
  final User? user;
  @override
  @JsonKey()
  final AuthStatus authStatus;
  @override
  final String? error;

  @override
  String toString() {
    return 'AuthState(user: $user, authStatus: $authStatus, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, authStatus, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final User? user,
      final AuthStatus authStatus,
      final String? error}) = _$AuthStateImpl;

  @override
  User? get user;
  @override
  AuthStatus get authStatus;
  @override
  String? get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
