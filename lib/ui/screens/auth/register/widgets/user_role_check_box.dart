import 'package:crm_flutter/logic/cubit/register_form_cubit/register_form_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/utils.dart' show AppColors, AppTextStyles;

class UserRoleCheckBox extends StatefulWidget {
  const UserRoleCheckBox({super.key});

  @override
  State<UserRoleCheckBox> createState() => _UserRoleCheckBoxState();
}

class _UserRoleCheckBoxState extends State<UserRoleCheckBox> {
  // int _currentIndex = 0;

  final List<String> _roles = [
    'Student',
    'Teacher',
    'Admin',
  ];

  @override
  Widget build(BuildContext context) {
    final checkBoxVal = context.select(
      (RegisterFormCubit cubit) => cubit.state.roleId,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        3,
        (index) => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
              value: checkBoxVal == index,
              activeColor: AppColors.blue,
              onChanged: (value) =>
                  context.read<RegisterFormCubit>().roleIdChanged(index),
            ),
            Text(
              _roles[index],
              style: AppTextStyles.nunitoSansW500.copyWith(
                color: AppColors.darkShadeGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
