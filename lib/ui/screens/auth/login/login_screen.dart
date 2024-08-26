import 'package:crm_flutter/app_config.dart';
import 'package:crm_flutter/logic/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../core/utils/utils.dart' hide AppConstants;
import '../../../../logic/cubit/login_form_cubit/login_form_cubit.dart';
import '../../../widgets/widgets.dart';

part 'widgets/login_screen_private_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt.get<LoginFormCubit>(),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.authStatus == AuthStatus.error) {
            AppFunction.showToast(
              message: state.error ?? 'Authentication failure',
              isSuccess: false,
              context: context,
            );
          }
        },
        child: const Scaffold(
          body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _MainText(),
                _LoginInToMilliyma(),
                SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
