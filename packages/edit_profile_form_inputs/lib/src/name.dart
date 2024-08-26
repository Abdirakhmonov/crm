import 'package:formz/formz.dart';

/// Validation errors for the [Name] [FormzInput]
enum NameValidationError {
  /// Generic invalid error
  invalid,
  same,
}

/// Form input for a name input.
class Name extends FormzInput<String, NameValidationError> {
  final String previousName;

  const Name.pure({this.previousName = ''}) : super.pure('');

  const Name.dirty({required this.previousName, String value = ''})
      : super.dirty(value);

  static final RegExp _nameRegExp = RegExp(r'^[a-zA-Z]+$');

  @override
  NameValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return NameValidationError.invalid;
    } else if (value == previousName) {
      return NameValidationError.same;
    } else if (!_nameRegExp.hasMatch(value)) {
      return NameValidationError.invalid;
    }
    return null;
  }
}
