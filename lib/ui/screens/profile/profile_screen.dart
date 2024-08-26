import 'package:crm_flutter/app_config.dart';
import 'package:crm_flutter/logic/bloc/admin_management/admin_user_management_bloc.dart';
import 'package:crm_flutter/logic/cubit/edit_profile_form_cubit/edit_profile_form_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/bloc/admin_subject_management/admin_subject_management_bloc.dart';
import 'widgets/admin_panel_drawer.dart';
import 'widgets/profile_info_widget.dart';
import '../../../logic/bloc/auth/auth_bloc.dart';
import '../../../core/utils/utils.dart' show UserData, AppColors, AppTextStyles;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final bool isAdmin =
        (UserData.roleId == 3 && UserData.roleName.toLowerCase() == 'admin');

    if (isAdmin) _adminGetDATA();

    return BlocProvider.value(
      value: getIt.get<EditProfileFormCubit>(),
      child: Scaffold(
        key: _key,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(Icons.arrow_back_rounded),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
                context.read<AuthBloc>().add(const AuthEvent.logout());
              },
              icon: const Icon(Icons.logout),
            ),
          ],
          shadowColor: AppColors.grayishBlue,
        ),
        drawer: isAdmin ? const AdminPanelDrawer() : null,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const BouncingScrollPhysics(),
          children: [
            Text(
              'My Profile',
              style: AppTextStyles.nunitoSansW700.copyWith(
                fontSize: 36,
                color: AppColors.darkShadeGreen,
              ),
            ),
            const ProfileInfoWidget(),
          ],
        ),
        floatingActionButton: isAdmin
            ? FloatingActionButton(
                backgroundColor: AppColors.blue,
                onPressed: () => _key.currentState!.openDrawer(),
                child: const Icon(
                  Icons.admin_panel_settings_rounded,
                  color: AppColors.white,
                ),
              )
            : null,
      ),
    );
  }

  void _adminGetDATA() {
    context
        .read<AdminUserManagementBloc>()
        .add(const AdminUserManagementEvent.getAllUsers());
    getIt
        .get<AdminSubjectManagementBloc>()
        .add(const AdminSubjectManagementEvent.getAll());
  }
}
