import 'package:formz/formz.dart';

/// validation errors for the [PhoneNumber] [FormzInput]
enum PhoneNumberValidationError { invalid }

class PhoneNumber extends FormzInput<String, PhoneNumberValidationError> {
  const PhoneNumber.pure() : super.pure('');

  const PhoneNumber.dirty([super.value = '']) : super.dirty();
  static final RegExp _phoneNumberRegExp =
      RegExp(r'^\+998 \(\d{2}\) \d{3}-\d{2}-\d{2}$');

  @override
  PhoneNumberValidationError? validator(String? value) =>
      _phoneNumberRegExp.hasMatch(value?.trim() ?? '')
          ? null
          : PhoneNumberValidationError.invalid;
}
