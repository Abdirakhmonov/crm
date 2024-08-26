import 'package:formz/formz.dart';

/// Validation errors for the [Email] [FormzInput]
enum EmailValidationError {
  /// Generic invalid error
  invalid,
  same,
}

/// Form input for an email input.
class Email extends FormzInput<String, EmailValidationError> {
  final String previousEmail;

  const Email.pure({this.previousEmail = ''}) : super.pure('');

  const Email.dirty({required this.previousEmail, String value = ''})
      : super.dirty(value);

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  EmailValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return EmailValidationError.invalid;
    } else if (value == previousEmail) {
      return EmailValidationError.same;
    } else if (!_emailRegExp.hasMatch(value)) {
      return EmailValidationError.invalid;
    }

    return null;
  }
}
