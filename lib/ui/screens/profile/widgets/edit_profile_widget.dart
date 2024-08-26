import 'package:crm_flutter/core/utils/utils.dart';
import 'package:crm_flutter/logic/bloc/user/user_bloc.dart';
import 'package:crm_flutter/logic/cubit/edit_profile_form_cubit/edit_profile_form_cubit.dart';
import 'package:crm_flutter/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app_config.dart';

class EditProfileWidget extends StatelessWidget {
  const EditProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Divider(color: AppColors.grey.withOpacity(0.5)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const _NameInput(),
              10.sizedBoxH,
              const _EmailInput(),
              10.sizedBoxH,
              const _PhoneNumberInput(),
              30.sizedBoxH,
              const _SaveButton(),
            ],
          ),
        ),
      ],
    );
  }
}

class _NameInput extends StatelessWidget {
  const _NameInput();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      labelText: 'Name',
      onChanged: (name) => context.read<EditProfileFormCubit>().nameChanged(
            previousName: UserData.name,
            value: name,
          ),
      initialValue: UserData.name == 'null' ? '' : UserData.name,
      textInputType: TextInputType.name,
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      labelText: 'Email',
      onChanged: (email) => context.read<EditProfileFormCubit>().emailChanged(
            previousEmail: UserData.email,
            value: email,
          ),
      initialValue: UserData.email == 'null' ? '' : UserData.email,
      textInputType: TextInputType.emailAddress,
    );
  }
}

class _PhoneNumberInput extends StatelessWidget {
  const _PhoneNumberInput();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      labelText: 'Phone',
      inputFormatters: [TextInputFormatters.phoneNumber],
      onChanged: (phoneNumber) =>
          context.read<EditProfileFormCubit>().phoneNumberChanged(
                previousPhoneNumber: UserData.phone,
                value: phoneNumber,
              ),
      initialValue: UserData.phone == 'Phone' ? '' : UserData.phone,
    );
  }
}

class _SaveButton extends StatelessWidget {
  const _SaveButton();

  @override
  Widget build(BuildContext context) {
    final isValid = context.select(
      (EditProfileFormCubit cubit) => cubit.state.isValid,
    );

    final state = context.select(
      (EditProfileFormCubit cubit) => cubit.state,
    );

    final userStatus =
        context.select((UserBloc value) => value.state.userStatus);

    return BlocListener<UserBloc, UserState>(
      bloc: getIt.get<UserBloc>(),
      listener: (context, state) {
        if (state.userStatus == UserStatus.loaded) {
          Navigator.of(context).pop();

          context.read<EditProfileFormCubit>().toInitial();

          AppFunction.showToast(
            message: 'Your data has been updated successfully',
            isSuccess: true,
            context: context,
          );
        }
      },
      child: AppRegularButton(
        buttonLabel: 'Save',
        onTap: !(userStatus == UserStatus.loading) && isValid
            ? () => context.read<UserBloc>().add(UserEvent.updateUserData(
                  email: state.email.value,
                  name: state.name.value,
                  phone: state.phoneNumber.value,
                  photoPath: state.photoPath,
                ))
            : null,
      ),
    );
  }
}
