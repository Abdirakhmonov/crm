import 'dart:io';

import 'package:crm_flutter/core/utils/app_colors.dart';
import 'package:crm_flutter/logic/cubit/edit_profile_form_cubit/edit_profile_form_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../logic/bloc/user/user_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../widgets/show_user_photo_item.dart';

class UserImageWidget extends StatefulWidget {
  const UserImageWidget({super.key});

  @override
  State<UserImageWidget> createState() => _UserImageWidgetState();
}

class _UserImageWidgetState extends State<UserImageWidget> {
  XFile? _xFile;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      buildWhen: (previous, current) =>
          current.userStatus == UserStatus.loading,
      builder: (context, state) {
        return GestureDetector(
          onTap: () async {
            _xFile = await ImagePicker().pickImage(
              source: ImageSource.gallery,
              imageQuality: 10,
            );
            if (_xFile != null) {
              if (!context.mounted) return;
              context
                  .read<EditProfileFormCubit>()
                  .profilePhotoChanged(_xFile!.path);
            }
          },
          child: BlocBuilder<EditProfileFormCubit, EditProfileFormState>(
            buildWhen: (previous, current) => current.photoPath.isNotEmpty,
            builder: (context, editProfileState) {
              return Container(
                height: 60,
                width: 60,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.grayishBlue.withOpacity(0.15),
                ),
                child: ShowUserPhotoItem(
                  imageFileForEdit: _xFile != null ? File(_xFile!.path) : null,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
