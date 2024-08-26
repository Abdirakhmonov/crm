import 'package:crm_flutter/data/models/room/room.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class RoomWidget extends StatelessWidget {
  final Room room;

  const RoomWidget({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.darkShadeGreen.withOpacity(0.3),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Name: ${room.name}', style: const TextStyle(fontSize: 18)),
          Text('Description: ${room.description}'),
          Text('Capacity: ${room.capacity} students'),
          const SizedBox(height: 10),
          const Text('Available Hours:', style: TextStyle(fontSize: 16)),
          const SizedBox(height: 5),
          // Column(
          //   children: room.availableHours.map((availableHour) {
          //     return Padding(
          //       padding: const EdgeInsets.symmetric(vertical: 5),
          //       child: Row(
          //         children: [
          //           Expanded(
          //             child: Text(
          //               availableHour.day.name.capitalize,
          //               style: const TextStyle(fontWeight: FontWeight.bold),
          //             ),
          //           ),
          //           Text(
          //             '${availableHour.startTime} - ${availableHour.endTime}',
          //           ),
          //         ],
          //       ),
          //     );
          //   }).toList(),
          // ),
        ],
      ),
    );
  }
}
