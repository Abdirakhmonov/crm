import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:edit_profile_form_inputs/edit_profile_from_inputs.dart';

part 'edit_profile_form_state.dart';

part 'edit_profile_form_cubit.freezed.dart';

class EditProfileFormCubit extends Cubit<EditProfileFormState> {
  EditProfileFormCubit() : super(const EditProfileFormState());

  void nameChanged({
    required String value,
    required String previousName,
  }) {
    final name = Name.dirty(
      previousName: previousName,
      value: value,
    );

    final isValid =
        name.isValid || state.email.isValid || state.phoneNumber.isValid;

    emit(state.copyWith(name: name, isValid: isValid));
  }

  void emailChanged({
    required String value,
    required String previousEmail,
  }) {
    final email = Email.dirty(previousEmail: previousEmail, value: value);

    final isValid =
        state.name.isValid || email.isValid || state.phoneNumber.isValid;

    emit(state.copyWith(email: email, isValid: isValid));
  }

  void phoneNumberChanged({
    required String value,
    required String previousPhoneNumber,
  }) {
    final phoneNumber = PhoneNumber.dirty(
      previousPhoneNumber: previousPhoneNumber,
      value: value,
    );

    final isValid =
        state.name.isValid || state.email.isValid || phoneNumber.isValid;

    emit(state.copyWith(phoneNumber: phoneNumber, isValid: isValid));
  }

  void profilePhotoChanged(String value) {
    final isValid = state.name.isValid ||
        state.email.isValid ||
        state.phoneNumber.isValid ||
        value.isNotEmpty;

    emit(state.copyWith(photoPath: value, isValid: isValid));
  }

  void toInitial() => emit(state.copyWith(
        isValid: false,
        photoPath: '',
        name: const Name.pure(),
        email: const Email.pure(),
        phoneNumber: const PhoneNumber.pure(),
      ));
}
