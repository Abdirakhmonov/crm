part of 'login_form_cubit.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    @Default(PhoneNumber.pure()) PhoneNumber phoneNumber,
    @Default(Password.pure()) Password password,
    @Default(false) bool isValid,
    String? errorMessage,
  }) = _LoginFormState;
}
