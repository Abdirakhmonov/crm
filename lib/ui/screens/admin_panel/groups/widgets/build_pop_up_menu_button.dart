import 'package:flutter/material.dart';

import '../../../../../data/models/user/user.dart';

class BuildPopUpMenuButton extends StatelessWidget {
  final String label;
  final User? selectedTeacher;
  final List<User> users;
  final ValueChanged<User> onSelected;

  const BuildPopUpMenuButton({
    super.key,
    required this.label,
    this.selectedTeacher,
    required this.users,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PopupMenuButton<User>(
          onSelected: onSelected,
          itemBuilder: (context) {
            return users.map((User user) {
              return PopupMenuItem<User>(
                value: user,
                child: Text("ID ${user.id}. ${user.name}"),
              );
            }).toList();
          },
          child: ListTile(
            title: Text(
              selectedTeacher != null
                  ? "ID ${selectedTeacher?.id}. ${selectedTeacher?.name}"
                  : label,
            ),
            trailing: const Icon(Icons.arrow_drop_down),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
