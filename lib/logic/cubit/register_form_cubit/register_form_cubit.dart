import 'package:auth_form_inputs/auth_form_inputs.dart';
import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_form_state.dart';

part 'register_form_cubit.freezed.dart';

class RegisterFormCubit extends Cubit<RegisterFormState> {
  RegisterFormCubit() : super(const RegisterFormState());

  void nameChanged(String value) {
    final name = Name.dirty(value);

    emit(state.copyWith(
      name: name,
      isValid: Formz.validate([
        name,
        state.phoneNumber,
        state.password,
        state.confirmedPassword,
      ]),
    ));
  }

  void phoneNumberChanged(String value) {
    final phoneNumber = PhoneNumber.dirty(value);

    emit(state.copyWith(
      phoneNumber: phoneNumber,
      isValid: Formz.validate([
        state.name,
        phoneNumber,
        state.password,
        state.confirmedPassword,
      ]),
    ));
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);

    emit(state.copyWith(
      password: password,
      isValid: state.confirmedPassword.value.isEmpty
          ? false
          : Formz.validate([
              state.name,
        state.phoneNumber,
        password,
        state.confirmedPassword,
      ]),
    ));
  }

  void roleIdChanged(int newRoleId) {

    emit(state.copyWith(
      roleId: newRoleId,
      isValid: Formz.validate([
        state.name,
        state.phoneNumber,
        state.password,
        state.confirmedPassword,
      ]),
    ));
  }

  void confirmedPasswordChanged(String value) {
    final confirmedPassword = ConfirmedPassword.dirty(
      password: state.password.value,
      value: value,
    );

    emit(state.copyWith(
      confirmedPassword: confirmedPassword,
      isValid: Formz.validate([
        state.name,
        state.phoneNumber,
        state.password,
        confirmedPassword,
      ]),
    ));
  }
}
