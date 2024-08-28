import 'package:crm_flutter/core/utils/utils.dart';
import 'package:crm_flutter/data/models/user/user.dart';
import 'package:crm_flutter/data/services/shared_prefs/user_shared_prefs_service.dart';
import 'package:crm_flutter/logic/bloc/user/user_bloc.dart';
import 'package:crm_flutter/ui/screens/auth/login/login_screen.dart';
import 'package:crm_flutter/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/bloc/auth/auth_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _collectUserData().then(
      (value) => _toTheNextScreen(),
    );
  }

  Future<void> _collectUserData() async {
    await Future.delayed(const Duration(seconds: 2));
    final User? user = UserSharedPrefsService.getUser();

    if (user == null) return;

    UserData.setUserData(user);
  }

  Future<void> _toTheNextScreen() async {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return BlocBuilder<AuthBloc, AuthState>(
            bloc: context.read<AuthBloc>()
              ..add(const AuthEvent.checkTokenExpiry()),
            builder: (context, state) {
              if (state.authStatus == AuthStatus.authenticated) {
                context.read<UserBloc>().add(const UserEvent.getUserGroups());

                return const HomeScreen();
              } else {
                return const LoginScreen();
              }
            },
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(),
            Column(
              children: [
                SizedBox(
                  width: DeviceScreen.w(context) / 1.5,
                  child: const Text(
                    'My academy',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w800,
                      color: AppColors.darkShadeGreen,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Simple way to learn',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.darkShadeGreen,
                  ),
                ),
              ],
            ),
            const Center(
              child: CircularProgressIndicator(
                color: AppColors.grayishBlue,
              ),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
