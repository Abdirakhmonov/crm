part of '../login_screen.dart';

class _MainText extends StatelessWidget {
  const _MainText();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: SvgPicture.asset(
            AppAssets.icoLogo,
          ),
        ),
        16.sizedBoxW,
        Text(
          'Milliyma',
          style: AppTextStyles.nunitoSansW700.copyWith(
            color: const Color(0xFF3A89FF),
            fontSize: 20,
          ),
        )
      ],
    );
  }
}

class _LoginInToMilliyma extends StatelessWidget {
  const _LoginInToMilliyma();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: DeviceScreen.h(context) / 1.8,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppColors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Register to Milliyma',
            style: AppTextStyles.nunitoSansW700.copyWith(
              fontSize: 18,
            ),
          ),
          const _PhoneNumberInput(),
          const _PasswordInput(),
          const _LoginButton(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ZoomTapAnimation(
                onTap: () {},
                child: Text(
                  'Forgot Password?',
                  style: AppTextStyles.nunitoSansW500.copyWith(
                    color: AppColors.grayishBlue,
                  ),
                ),
              ),
            ],
          ),
          ZoomTapAnimation(
            onTap: () => Navigator.pushNamed(context, AppRouter.registerScreen),
            child: Text(
              'Don’t have an account?',
              style: AppTextStyles.nunitoSansW600.copyWith(
                fontSize: 16,
                color: AppColors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PhoneNumberInput extends StatelessWidget {
  const _PhoneNumberInput();

  @override
  Widget build(BuildContext context) {
    final displayError = context.select(
      (LoginFormCubit cubit) => cubit.state.phoneNumber.displayError,
    );

    return AppTextFormField(
      onChanged: (phoneNumber) =>
          context.read<LoginFormCubit>().phoneNumberChanged(phoneNumber),
      inputFormatters: [TextInputFormatters.phoneNumber],
      hintText: '+998 99 123 45 67',
      labelText: 'Phone number',
      errorText: displayError != null ? 'Invalid phone number' : null,
      textInputAction: TextInputAction.next,
      textInputType: TextInputType.phone,
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    final displayError = context.select(
      (LoginFormCubit cubit) => cubit.state.password.displayError,
    );
    return AppTextFormField(
      textInputAction: TextInputAction.done,
      onChanged: (password) =>
          context.read<LoginFormCubit>().passwordChanged(password),
      labelText: 'Password',
      hintText: '********',
      isObscure: true,
      errorText: displayError != null ? 'Enter valid password' : null,
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    final currentAuthStatus = context.select(
      (AuthBloc bloc) => bloc.state.authStatus,
    );

    final state = context.select((LoginFormCubit cubit) => cubit.state);

    final isValid = context.select((LoginFormCubit cubit) => cubit.state.isValid);

    return AppRegularButton(
      buttonLabel: 'Sign in',
      onTap: currentAuthStatus != AuthStatus.loading && isValid
          ? () => context.read<AuthBloc>().add(AuthEvent.loginUser(
                phoneNumber: state.phoneNumber.value,
                password: state.password.value,
              ))
          : null,
      shouldAddIcon: true,
    );
  }
}
