import 'package:crm_flutter/core/utils/app_colors.dart';
import 'package:crm_flutter/core/utils/extensions.dart';
import 'package:crm_flutter/data/models/user/user.dart';
import 'package:flutter/material.dart';

class DisplayUsersWidget extends StatelessWidget {
  final List<User> users;

  const DisplayUsersWidget({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return users.isNotEmpty
        ? ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final User user = users[index];
              return Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.grayishBlue.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name: ${user.name}"),
                        Text("Role: ${user.role.name}"),
                      ],
                    ),
                    15.sizedBoxW,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Email: ${user.email ?? 'email not found'}"),
                          Text("Phone: ${user.phone}"),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        : const Center(child: Text('no user found for this category'));
  }
}
