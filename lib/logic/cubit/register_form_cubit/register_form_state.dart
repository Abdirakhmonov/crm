part of 'register_form_cubit.dart';

@freezed
class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    @Default(PhoneNumber.pure()) PhoneNumber phoneNumber,
    @Default(Name.pure()) Name name,
    @Default(Password.pure()) Password password,
    @Default(ConfirmedPassword.pure()) ConfirmedPassword confirmedPassword,
    @Default(0) int roleId,
    @Default(false) bool isValid,
    String? errorMessage,
  }) = _RegisterFormState;
}
