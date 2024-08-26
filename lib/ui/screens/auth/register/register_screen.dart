import 'package:crm_flutter/ui/screens/auth/register/widgets/user_role_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../app_config.dart';
import '../../../../logic/bloc/auth/auth_bloc.dart';
import '../../../../logic/cubit/register_form_cubit/register_form_cubit.dart';
import '../../../widgets/widgets.dart';
import '../../../../core/utils/utils.dart';

part 'widgets/register_screen_private_widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt.get<RegisterFormCubit>(),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if(state.authStatus == AuthStatus.authenticated){
            Navigator.of(context).pop();
          }
        },
        child: Scaffold(
          body: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.only(right: 20, left: 20, top: 50),
            children: [
              const _MainText(),
              40.sizedBoxH,
              const _RegisterInToMilliyma(),
              const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
