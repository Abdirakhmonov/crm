import 'package:formz/formz.dart';

/// validation errors for the [Password] [FormzInput]
enum PasswordValidationError {
  /// Generic invalid error.
  invalid,
}

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');

  const Password.dirty([super.value = '']) : super.dirty();

  static final _passwordRegExp = RegExp(r'^(?=.*\d)[a-zA-Z\d]{8,}$');

  @override
  PasswordValidationError? validator(String? value) {
    return _passwordRegExp.hasMatch(value ?? '')
        ? null
        : PasswordValidationError.invalid;
  }
}
