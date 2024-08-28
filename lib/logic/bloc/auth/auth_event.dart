part of 'auth_bloc.dart';
@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.socialLogin({
    @Default(SocialLoginTypes.google) SocialLoginTypes type,
  }) = SocialLoginEvent;

  const factory AuthEvent.loginUser({
    required String phoneNumber,
    required String password,
  }) = LoginUserEvent;

  const factory AuthEvent.registerUser({
    required String name,
    required String phoneNumber,
    required String password,
    required String passwordConfirmation,
    required int roleId,
  }) = RegisterUserEvent;

  const factory AuthEvent.resetPassword({required String phoneNumber}) =
      ResetPasswordEvent;

  const factory AuthEvent.checkTokenExpiry() = CheckTokenExpiryEvent;


  const factory AuthEvent.logout() = LogoutEvent;
}
