import 'package:formz/formz.dart';

/// Validation errors for the [PhoneNumber] [FormzInput]
enum PhoneNumberValidationError {
  /// Generic invalid error
  invalid,
  same,
}

/// Form input for a phone number input.
class PhoneNumber extends FormzInput<String, PhoneNumberValidationError> {
  final String previousPhoneNumber;

  const PhoneNumber.pure({this.previousPhoneNumber = ''}) : super.pure('');

  const PhoneNumber.dirty(
      {required this.previousPhoneNumber, String value = ''})
      : super.dirty(value);

  static final RegExp _phoneNumberRegExp =
      RegExp(r'^\+998 \(\d{2}\) \d{3}-\d{2}-\d{2}$');

  @override
  PhoneNumberValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return PhoneNumberValidationError.invalid;
    } else if (value == previousPhoneNumber) {
      return PhoneNumberValidationError.same;
    } else if (!_phoneNumberRegExp.hasMatch(value.trim())) {
      return PhoneNumberValidationError.invalid;
    }

    return null;
  }
}
