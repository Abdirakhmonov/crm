// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterFormState {
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  ConfirmedPassword get confirmedPassword => throw _privateConstructorUsedError;
  int get roleId => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of RegisterFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterFormStateCopyWith<RegisterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormStateCopyWith<$Res> {
  factory $RegisterFormStateCopyWith(
          RegisterFormState value, $Res Function(RegisterFormState) then) =
      _$RegisterFormStateCopyWithImpl<$Res, RegisterFormState>;
  @useResult
  $Res call(
      {PhoneNumber phoneNumber,
      Name name,
      Password password,
      ConfirmedPassword confirmedPassword,
      int roleId,
      bool isValid,
      String? errorMessage});
}

/// @nodoc
class _$RegisterFormStateCopyWithImpl<$Res, $Val extends RegisterFormState>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? name = null,
    Object? password = null,
    Object? confirmedPassword = null,
    Object? roleId = null,
    Object? isValid = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmedPassword: null == confirmedPassword
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterFormStateImplCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$$RegisterFormStateImplCopyWith(_$RegisterFormStateImpl value,
          $Res Function(_$RegisterFormStateImpl) then) =
      __$$RegisterFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PhoneNumber phoneNumber,
      Name name,
      Password password,
      ConfirmedPassword confirmedPassword,
      int roleId,
      bool isValid,
      String? errorMessage});
}

/// @nodoc
class __$$RegisterFormStateImplCopyWithImpl<$Res>
    extends _$RegisterFormStateCopyWithImpl<$Res, _$RegisterFormStateImpl>
    implements _$$RegisterFormStateImplCopyWith<$Res> {
  __$$RegisterFormStateImplCopyWithImpl(_$RegisterFormStateImpl _value,
      $Res Function(_$RegisterFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? name = null,
    Object? password = null,
    Object? confirmedPassword = null,
    Object? roleId = null,
    Object? isValid = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$RegisterFormStateImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmedPassword: null == confirmedPassword
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RegisterFormStateImpl implements _RegisterFormState {
  const _$RegisterFormStateImpl(
      {this.phoneNumber = const PhoneNumber.pure(),
      this.name = const Name.pure(),
      this.password = const Password.pure(),
      this.confirmedPassword = const ConfirmedPassword.pure(),
      this.roleId = 0,
      this.isValid = false,
      this.errorMessage});

  @override
  @JsonKey()
  final PhoneNumber phoneNumber;
  @override
  @JsonKey()
  final Name name;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final ConfirmedPassword confirmedPassword;
  @override
  @JsonKey()
  final int roleId;
  @override
  @JsonKey()
  final bool isValid;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RegisterFormState(phoneNumber: $phoneNumber, name: $name, password: $password, confirmedPassword: $confirmedPassword, roleId: $roleId, isValid: $isValid, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFormStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                other.confirmedPassword == confirmedPassword) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, name, password,
      confirmedPassword, roleId, isValid, errorMessage);

  /// Create a copy of RegisterFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterFormStateImplCopyWith<_$RegisterFormStateImpl> get copyWith =>
      __$$RegisterFormStateImplCopyWithImpl<_$RegisterFormStateImpl>(
          this, _$identity);
}

abstract class _RegisterFormState implements RegisterFormState {
  const factory _RegisterFormState(
      {final PhoneNumber phoneNumber,
      final Name name,
      final Password password,
      final ConfirmedPassword confirmedPassword,
      final int roleId,
      final bool isValid,
      final String? errorMessage}) = _$RegisterFormStateImpl;

  @override
  PhoneNumber get phoneNumber;
  @override
  Name get name;
  @override
  Password get password;
  @override
  ConfirmedPassword get confirmedPassword;
  @override
  int get roleId;
  @override
  bool get isValid;
  @override
  String? get errorMessage;

  /// Create a copy of RegisterFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterFormStateImplCopyWith<_$RegisterFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
