import 'package:crm_flutter/ui/screens/profile/widgets/user_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../core/utils/utils.dart';
import '../../../../logic/bloc/user/user_bloc.dart';
import 'edit_profile_widget.dart';

class ProfileInfoWidget extends StatefulWidget {
  const ProfileInfoWidget({super.key});

  @override
  State<ProfileInfoWidget> createState() => _ProfileInfoWidgetState();
}

class _ProfileInfoWidgetState extends State<ProfileInfoWidget> {
  bool _shouldShowEditProfile = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const UserImageWidget(),
                        10.sizedBoxH,
                        BlocBuilder<UserBloc, UserState>(
                          buildWhen: (previous, current) =>
                              current.userStatus == UserStatus.loaded,
                          builder: (context, state) {
                            return Text(
                              UserData.name,
                              style: AppTextStyles.nunitoSansW700
                                  .copyWith(fontSize: 22),
                            );
                          },
                        ),
                        Text(
                          UserData.roleName,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    ZoomTapAnimation(
                      onTap: () {
                        _shouldShowEditProfile = !_shouldShowEditProfile;
                        setState(() {});
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: AppColors.softPastelBlue,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Center(child: SvgPicture.asset(AppAssets.edit)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (_shouldShowEditProfile) const EditProfileWidget(),
        ],
      ),
    );
  }
}
