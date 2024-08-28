import 'package:bloc_test/bloc_test.dart';
import 'package:crm_flutter/data/models/app_response.dart';
import 'package:crm_flutter/data/models/user/user.dart';
import 'package:crm_flutter/data/repositories/auth_repository.dart';
import 'package:crm_flutter/data/repositories/user_repository.dart';
import 'package:crm_flutter/logic/bloc/auth/auth_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

class MockUserRepository extends Mock implements UserRepository {}

class MockUser extends Mock implements User {}

void main() {
  late AuthBloc authBloc;
  late MockAuthRepository mockAuthRepository;
  late MockUserRepository mockUserRepository;
  late User mockUser;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    mockUserRepository = MockUserRepository();
    mockUser = MockUser();

    authBloc = AuthBloc(
      authRepository: mockAuthRepository,
      userRepository: mockUserRepository,
    );
  });

  tearDown(() {
    authBloc.close();
  });

  group('AuthBloc Login', () {
    const String phoneNumber = '1234567890';
    const String password = 'password';
    final AppResponse successResponse = AppResponse(
      isSuccess: true,
      errorMessage: '',
    );

    final AppResponse failureResponse = AppResponse(
      isSuccess: false,
      errorMessage: 'Login failed',
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthStatus.loading, AuthStatus.authenticated] when login is successful',
      build: () {
        when(() => mockAuthRepository.login(
              phone: phoneNumber,
              password: password,
            )).thenAnswer((_) async => successResponse);

        when(() => mockUserRepository.getUser())
            .thenAnswer((_) async => successResponse..data = mockUser);

        return authBloc;
      },
      act: (bloc) => bloc.add(const LoginUserEvent(
        phoneNumber: phoneNumber,
        password: password,
      )),
      expect: () => [
        const AuthState(authStatus: AuthStatus.loading),
        AuthState(authStatus: AuthStatus.authenticated, user: mockUser),
      ],
      verify: (_) {
        verify(() => mockAuthRepository.login(
            phone: phoneNumber, password: password)).called(1);
        verify(() => mockUserRepository.getUser()).called(1);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthStatus.loading, AuthStatus.error] when login fails',
      build: () {
        when(() => mockAuthRepository.login(
              phone: phoneNumber,
              password: password,
            )).thenAnswer((_) async => failureResponse);

        return authBloc;
      },
      act: (bloc) => bloc.add(const LoginUserEvent(
        phoneNumber: phoneNumber,
        password: password,
      )),
      expect: () => [
        const AuthState(authStatus: AuthStatus.loading),
        const AuthState(authStatus: AuthStatus.error, error: 'Login failed'),
      ],
      verify: (_) {
        verify(() => mockAuthRepository.login(
            phone: phoneNumber, password: password)).called(1);
      },
    );
  });

  group('AuthBloc Register', () {
    const String name = 'John Doe';
    const String phoneNumber = '1234567890';
    const String password = 'password';
    const String passwordConfirmation = 'password';
    const int roleId = 1;
    final AppResponse successResponse = AppResponse(
      isSuccess: true,
      errorMessage: '',
    );

    final AppResponse failureResponse = AppResponse(
      isSuccess: false,
      errorMessage: 'Registration failed',
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthStatus.loading, AuthStatus.authenticated] when registration is successful',
      build: () {
        when(() => mockAuthRepository.register(
              name: name,
              phone: phoneNumber,
              password: password,
              passwordConfirmation: passwordConfirmation,
              roleId: roleId + 1,
            )).thenAnswer((_) async => successResponse);

        when(() => mockUserRepository.getUser())
            .thenAnswer((_) async => successResponse..data = mockUser);

        return authBloc;
      },
      act: (bloc) => bloc.add(const RegisterUserEvent(
        name: name,
        phoneNumber: phoneNumber,
        password: password,
        passwordConfirmation: passwordConfirmation,
        roleId: roleId,
      )),
      expect: () => [
        const AuthState(authStatus: AuthStatus.loading),
        AuthState(authStatus: AuthStatus.authenticated, user: mockUser),
      ],
      verify: (_) {
        verify(() => mockAuthRepository.register(
              name: name,
              phone: phoneNumber,
              password: password,
              passwordConfirmation: passwordConfirmation,
              roleId: roleId + 1,
            )).called(1);
        verify(() => mockUserRepository.getUser()).called(1);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthStatus.loading, AuthStatus.error] when registration fails',
      build: () {
        when(() => mockAuthRepository.register(
              name: name,
              phone: phoneNumber,
              password: password,
              passwordConfirmation: passwordConfirmation,
              roleId: roleId + 1,
            )).thenAnswer((_) async => failureResponse);

        return authBloc;
      },
      act: (bloc) => bloc.add(const RegisterUserEvent(
        name: name,
        phoneNumber: phoneNumber,
        password: password,
        passwordConfirmation: passwordConfirmation,
        roleId: roleId,
      )),
      expect: () => [
        const AuthState(authStatus: AuthStatus.loading),
        const AuthState(
            authStatus: AuthStatus.error, error: 'Registration failed'),
      ],
      verify: (_) {
        verify(() => mockAuthRepository.register(
              name: name,
              phone: phoneNumber,
              password: password,
              passwordConfirmation: passwordConfirmation,
              roleId: roleId + 1,
            )).called(1);
      },
    );
  });
}
