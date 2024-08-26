part of '../register_screen.dart';

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

class _RegisterInToMilliyma extends StatelessWidget {
  const _RegisterInToMilliyma();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: DeviceScreen.h(context) / 1.35,
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
            style: AppTextStyles.nunitoSansW700.copyWith(fontSize: 18),
          ),
          const _NameInput(),
          const _PhoneNumberInput(),
          const _PasswordInput(),
          const _PasswordConfirmationInput(),
          const UserRoleCheckBox(),
          const _RegisterButton(),
          ZoomTapAnimation(
            onTap: () => Navigator.of(context).pop(),
            child: Text(
              'Already Registered?',
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

class _NameInput extends StatelessWidget {
  const _NameInput();

  @override
  Widget build(BuildContext context) {
    final displayError = context.select(
      (RegisterFormCubit cubit) => cubit.state.name.displayError,
    );

    return AppTextFormField(
      textInputAction: TextInputAction.done,
      onChanged: (name) => context.read<RegisterFormCubit>().nameChanged(name),
      labelText: 'Your name',
      hintText: 'Alex',
      errorText: displayError != null ? 'Only letters are allowed' : null,
    );
  }
}

class _PhoneNumberInput extends StatelessWidget {
  const _PhoneNumberInput();

  @override
  Widget build(BuildContext context) {
    final displayError = context.select(
      (RegisterFormCubit cubit) => cubit.state.phoneNumber.displayError,
    );

    return AppTextFormField(
      onChanged: (phoneNumber) =>
          context.read<RegisterFormCubit>().phoneNumberChanged(phoneNumber),
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
      (RegisterFormCubit cubit) => cubit.state.password.displayError,
    );
    return AppTextFormField(
      textInputAction: TextInputAction.done,
      onChanged: (password) =>
          context.read<RegisterFormCubit>().passwordChanged(password),
      labelText: 'Password',
      hintText: '********',
      isObscure: true,
      errorText: displayError != null ? 'Enter valid password' : null,
    );
  }
}

class _PasswordConfirmationInput extends StatelessWidget {
  const _PasswordConfirmationInput();

  @override
  Widget build(BuildContext context) {
    final displayError = context.select(
      (RegisterFormCubit cubit) => cubit.state.confirmedPassword.displayError,
    );
    return AppTextFormField(
      textInputAction: TextInputAction.done,
      onChanged: (passwordConfirmation) => context
          .read<RegisterFormCubit>()
          .confirmedPasswordChanged(passwordConfirmation),
      labelText: 'Confirm Password',
      hintText: '********',
      isObscure: true,
      errorText: displayError != null ? 'Password does not match' : null,
    );
  }
}

class _RegisterButton extends StatelessWidget {
  const _RegisterButton();

  @override
  Widget build(BuildContext context) {
    final authStatus = context.select(
      (AuthBloc bloc) => bloc.state.authStatus,
    );

    final isValid =
        context.select((RegisterFormCubit cubit) => cubit.state.isValid);

    final state = context.select((RegisterFormCubit cubit) => cubit.state);

    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, authState) {
        return AppRegularButton(
          buttonLabel: 'Register',
          onTap: authStatus != AuthStatus.loading && isValid
              ? () => context.read<AuthBloc>().add(AuthEvent.registerUser(
                    name: state.name.value,
                    phoneNumber: state.phoneNumber.value,
                    password: state.password.value,
                    passwordConfirmation: state.confirmedPassword.value,
                    roleId: state.roleId,
                  ))
              : null,
        );
      },
    );
  }
}
