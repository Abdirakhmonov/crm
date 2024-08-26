import 'package:bloc/bloc.dart';
import 'package:crm_flutter/core/utils/user_data.dart';
import 'package:crm_flutter/data/models/user/user.dart';
import 'package:crm_flutter/data/repositories/auth_repository.dart';
import 'package:crm_flutter/data/repositories/user_repository.dart';
import 'package:crm_flutter/data/services/shared_prefs/token_prefs_service.dart';
import 'package:crm_flutter/data/services/shared_prefs/user_shared_prefs_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/app_response.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  AuthBloc(
      {required AuthRepository authRepository,
      required UserRepository userRepository})
      : _authRepository = authRepository,
        _userRepository = userRepository,
        super(const AuthState()) {
    on<LoginUserEvent>(_onLoginUser);
    on<RegisterUserEvent>(_onRegisterUser);
    on<ResetPasswordEvent>(_onResetPassword);
    on<CheckTokenExpiryEvent>(_onCheckTokenExpiry);
    on<LogoutEvent>(_onLogout);
  }

  void _onLoginUser(
    LoginUserEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));

    try {
      final AppResponse appResponse = await _authRepository.login(
        phone: event.phoneNumber,
        password: event.password,
      );

      if (appResponse.isSuccess && appResponse.errorMessage.isEmpty) {
        emit(state.copyWith(
          authStatus: AuthStatus.authenticated,
          user: await _getSaveUser(),
        ));
      } else {
        throw appResponse.errorMessage;
      }
    } catch (e) {
      debugPrint(e.toString());
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }

  void _onRegisterUser(
    RegisterUserEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));

    try {
      final AppResponse appResponse = await _authRepository.register(
        name: event.name,
        phone: event.phoneNumber,
        password: event.password,
        passwordConfirmation: event.passwordConfirmation,
        roleId: event.roleId + 1,
      );

      if (appResponse.isSuccess && appResponse.errorMessage.isEmpty) {
        emit(state.copyWith(
          authStatus: AuthStatus.authenticated,
          user: await _getSaveUser(),
        ));
      } else {
        throw appResponse.errorMessage;
      }
    } catch (e) {
      debugPrint(e.toString());
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }

  void _onResetPassword(
    ResetPasswordEvent event,
    Emitter<AuthState> emit,
  ) {
    emit(state.copyWith(authStatus: AuthStatus.loading));
    try {} catch (e) {
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }

  void _onCheckTokenExpiry(
    CheckTokenExpiryEvent event,
    Emitter<AuthState> emit,
  ) {
    final data = _authRepository.checkTokenExpiry();
    if (data == null) {
      emit(state.copyWith(authStatus: AuthStatus.unauthenticated));
    } else {
      emit(state.copyWith(authStatus: AuthStatus.authenticated));
    }
  }

  void _onLogout(
    LogoutEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));
    try {
      await _authRepository.logOut();

      await Future.wait([
        TokenPrefsService.clearAccessToken(),
        UserSharedPrefsService.clearUser(),
      ]);

      emit(state.copyWith(authStatus: AuthStatus.unauthenticated));
    } catch (e) {
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }

  Future<User> _getSaveUser() async {
    final data = await _userRepository.getUser();

    final User user = data.data;

    await UserSharedPrefsService.updateUser(user);

    UserData.setUserData(user);

    return user;
  }
}
