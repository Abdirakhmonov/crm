import 'package:auth_form_inputs/auth_form_inputs.dart';
import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form_state.dart';
part 'login_form_cubit.freezed.dart';

class LoginFormCubit extends Cubit<LoginFormState> {
  LoginFormCubit() : super(const LoginFormState());

  void phoneNumberChanged(String value) {
    final phoneNumber = PhoneNumber.dirty(value);

    emit(state.copyWith(
      phoneNumber: phoneNumber,
      isValid: Formz.validate([phoneNumber, state.password]),
    ));
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);

    emit(state.copyWith(
      password: password,
      isValid: Formz.validate([state.phoneNumber, password]),
    ));
  }
}
