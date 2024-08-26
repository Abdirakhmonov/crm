import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/utils/device_screen.dart';

class UserGroupShimmer extends StatelessWidget {
  const UserGroupShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      itemCount: 15,
      itemBuilder: (context, index) => Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          margin: EdgeInsets.only(right: index == 14 ? 0 : 15),
          height: 200,
          width: DeviceScreen.w(context) / 1.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
