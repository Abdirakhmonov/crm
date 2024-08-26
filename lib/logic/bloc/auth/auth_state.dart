part of 'auth_bloc.dart';

enum AuthStatus { initial, loading, authenticated, unauthenticated, error }

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    User? user,
    @Default(AuthStatus.initial) AuthStatus authStatus,
    String? error,
  }) = _AuthState;
}
