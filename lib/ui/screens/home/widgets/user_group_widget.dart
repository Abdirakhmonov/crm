import 'package:flutter/material.dart';
import 'package:crm_flutter/data/models/groups/group.dart';
import '../../../../core/utils/utils.dart';

class UserGroupWidget extends StatelessWidget {
  final int index;
  final Group group;

  const UserGroupWidget({
    super.key,
    required this.group,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: DeviceScreen.w(context) / 1.1,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: AppColors.darkShadeGreen,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              group.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Main Teacher: ${group.mainTeacher.name}',
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              'Assistant Teacher: ${group.assistantTeacher.name}',
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              'Students: ${group.students.length}',
              style: const TextStyle(color: Colors.white),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Created: ${formatDate(group.createdAt)}',
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Text(
                  'Updated: ${formatDate(group.updatedAt)}',
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String formatDate(DateTime? date) {
    if (date == null) return 'N/A';
    return '${date.day}/${date.month}/${date.year}';
  }
}