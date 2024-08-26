import 'package:formz/formz.dart';

/// Validation errors for the [ConfirmedPassword] [FormzInput].
enum ConfirmedPasswordValidationError {
  invalid,
}

/// Form input for a confirmed password input.
class ConfirmedPassword
    extends FormzInput<String, ConfirmedPasswordValidationError> {
  /// The original password.
  final String password;

  const ConfirmedPassword.pure({this.password = ''}) : super.pure('');

  const ConfirmedPassword.dirty({required this.password, String value = ''})
      : super.dirty(value);

  @override
  ConfirmedPasswordValidationError? validator(String? value) {
    return password == value ? null : ConfirmedPasswordValidationError.invalid;
  }
}