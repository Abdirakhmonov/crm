import 'dart:io';
import 'package:flutter/material.dart';

import '../../core/utils/utils.dart';

class ShowUserPhotoItem extends StatelessWidget {
  final File? imageFileForEdit;

  const ShowUserPhotoItem({super.key, this.imageFileForEdit});

  @override
  Widget build(BuildContext context) {
    if (imageFileForEdit != null && imageFileForEdit!.path.isNotEmpty) {
      return Image.file(imageFileForEdit!, fit: BoxFit.cover);
    }

    if (UserData.photo.isNotEmpty && UserData.photo != 'null') {
      return Image.network(
        'http://millima.flutterwithakmaljon.uz/storage/avatars/${UserData.photo}',
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) =>
            Image.network(AppConstants.userProfilePhoto, fit: BoxFit.cover),
      );
    }

    return Center(
      child: Text(
        AppFunction.getUserName(UserData.name),
        style: AppTextStyles.nunitoSansW700,
      ),
    );
  }
}
