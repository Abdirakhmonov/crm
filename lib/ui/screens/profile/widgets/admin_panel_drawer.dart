import 'package:flutter/material.dart';

import '../../../../core/utils/utils.dart';

class AdminPanelDrawer extends StatelessWidget {
  const AdminPanelDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(color: AppColors.blue),
            child: Text(
              'Admin panel',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.supervised_user_circle_rounded),
            title: const Text('All users'),
            onTap: () => Navigator.pushNamed(
              context,
              AppRouter.adminPanelUsersScreen,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: const Text('Groups'),
            onTap: () => Navigator.pushNamed(
              context,
              AppRouter.adminPanelGroupsScreen,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.meeting_room_outlined),
            title: const Text('Rooms'),
            onTap: () => Navigator.pushNamed(
              context,
              AppRouter.adminPanelRoomsScreen,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.subject),
            title: const Text('Subjects'),
            onTap: () => Navigator.pushNamed(
              context,
              AppRouter.adminPanelSubjectsScreen,
            ),
          ),
        ],
      ),
    );
  }
}
