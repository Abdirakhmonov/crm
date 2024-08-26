// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditProfileFormState {
  Email get email => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  String get photoPath => throw _privateConstructorUsedError;
  dynamic get isValid => throw _privateConstructorUsedError;

  /// Create a copy of EditProfileFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditProfileFormStateCopyWith<EditProfileFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileFormStateCopyWith<$Res> {
  factory $EditProfileFormStateCopyWith(EditProfileFormState value,
          $Res Function(EditProfileFormState) then) =
      _$EditProfileFormStateCopyWithImpl<$Res, EditProfileFormState>;
  @useResult
  $Res call(
      {Email email,
      Name name,
      PhoneNumber phoneNumber,
      String photoPath,
      dynamic isValid});
}

/// @nodoc
class _$EditProfileFormStateCopyWithImpl<$Res,
        $Val extends EditProfileFormState>
    implements $EditProfileFormStateCopyWith<$Res> {
  _$EditProfileFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditProfileFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? photoPath = null,
    Object? isValid = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      photoPath: null == photoPath
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditProfileFormStateImplCopyWith<$Res>
    implements $EditProfileFormStateCopyWith<$Res> {
  factory _$$EditProfileFormStateImplCopyWith(_$EditProfileFormStateImpl value,
          $Res Function(_$EditProfileFormStateImpl) then) =
      __$$EditProfileFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Email email,
      Name name,
      PhoneNumber phoneNumber,
      String photoPath,
      dynamic isValid});
}

/// @nodoc
class __$$EditProfileFormStateImplCopyWithImpl<$Res>
    extends _$EditProfileFormStateCopyWithImpl<$Res, _$EditProfileFormStateImpl>
    implements _$$EditProfileFormStateImplCopyWith<$Res> {
  __$$EditProfileFormStateImplCopyWithImpl(_$EditProfileFormStateImpl _value,
      $Res Function(_$EditProfileFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditProfileFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? photoPath = null,
    Object? isValid = freezed,
  }) {
    return _then(_$EditProfileFormStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      photoPath: null == photoPath
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: freezed == isValid ? _value.isValid! : isValid,
    ));
  }
}

/// @nodoc

class _$EditProfileFormStateImpl implements _EditProfileFormState {
  const _$EditProfileFormStateImpl(
      {this.email = const Email.pure(),
      this.name = const Name.pure(),
      this.phoneNumber = const PhoneNumber.pure(),
      this.photoPath = '',
      this.isValid = false});

  @override
  @JsonKey()
  final Email email;
  @override
  @JsonKey()
  final Name name;
  @override
  @JsonKey()
  final PhoneNumber phoneNumber;
  @override
  @JsonKey()
  final String photoPath;
  @override
  @JsonKey()
  final dynamic isValid;

  @override
  String toString() {
    return 'EditProfileFormState(email: $email, name: $name, phoneNumber: $phoneNumber, photoPath: $photoPath, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileFormStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.photoPath, photoPath) ||
                other.photoPath == photoPath) &&
            const DeepCollectionEquality().equals(other.isValid, isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, name, phoneNumber,
      photoPath, const DeepCollectionEquality().hash(isValid));

  /// Create a copy of EditProfileFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileFormStateImplCopyWith<_$EditProfileFormStateImpl>
      get copyWith =>
          __$$EditProfileFormStateImplCopyWithImpl<_$EditProfileFormStateImpl>(
              this, _$identity);
}

abstract class _EditProfileFormState implements EditProfileFormState {
  const factory _EditProfileFormState(
      {final Email email,
      final Name name,
      final PhoneNumber phoneNumber,
      final String photoPath,
      final dynamic isValid}) = _$EditProfileFormStateImpl;

  @override
  Email get email;
  @override
  Name get name;
  @override
  PhoneNumber get phoneNumber;
  @override
  String get photoPath;
  @override
  dynamic get isValid;

  /// Create a copy of EditProfileFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditProfileFormStateImplCopyWith<_$EditProfileFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
