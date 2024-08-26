import 'package:crm_flutter/data/models/groups/group.dart';
import 'package:crm_flutter/data/services/shared_prefs/token_prefs_service.dart';
import 'package:crm_flutter/logic/bloc/admin_group_management/admin_group_management_bloc.dart';
import 'package:crm_flutter/logic/bloc/admin_room_management/admin_room_management_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateTimeTableForGroup extends StatefulWidget {
  final Group group;

  const CreateTimeTableForGroup({super.key, required this.group});

  @override
  State<CreateTimeTableForGroup> createState() =>
      _CreateTimeTableForGroupState();
}

class _CreateTimeTableForGroupState extends State<CreateTimeTableForGroup> {
  final _formKey = GlobalKey<FormState>();

  int? roomId;
  int? dayId;
  TimeOfDay? startTime;
  TimeOfDay? endTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Timetable Entry'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            BlocBuilder<AdminRoomManagementBloc, AdminRoomManagementState>(
              buildWhen: (previous, current) =>
                  current is LoadedAdminGroupState,
              builder: (context, state) => state.maybeWhen(
                  loaded: (rooms) {
                    return rooms.isNotEmpty
                        ? DropdownButtonFormField<int>(
                            value: roomId,
                            decoration:
                                const InputDecoration(labelText: 'Room'),
                            items: List.generate(
                              rooms.length,
                              (index) => DropdownMenuItem(
                                  value: null, child: Text(rooms[index].name)),
                            ),
                            onChanged: (value) {
                              roomId = value;
                              setState(() {});
                            },
                            validator: (value) =>
                                value == null ? 'Please select a room' : null,
                          )
                        : const Center(child: Text('Create room first'));
                  },
                  orElse: () => const SizedBox()),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<int>(
              value: dayId,
              decoration: const InputDecoration(labelText: 'Day'),
              items: const [
                DropdownMenuItem(value: null, child: Text('Select Day')),
                DropdownMenuItem(value: 1, child: Text('Monday')),
                DropdownMenuItem(value: 2, child: Text('Tuesday')),
                DropdownMenuItem(value: 3, child: Text('Wednesday')),
                DropdownMenuItem(value: 4, child: Text('Thursday')),
                DropdownMenuItem(value: 5, child: Text('Friday')),
                DropdownMenuItem(value: 6, child: Text('Saturday')),
                DropdownMenuItem(value: 7, child: Text('Sunday')),
              ],
              onChanged: (value) {
                dayId = value;
                setState(() {});
              },
              validator: (value) =>
                  value == null ? 'Please select a day' : null,
            ),
            const SizedBox(height: 16),
            ListTile(
              title: const Text('Start Time'),
              subtitle: Text(startTime?.format(context) ?? 'Not set'),
              trailing: const Icon(Icons.access_time),
              onTap: () async {
                final time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (time != null) {
                  setState(() => startTime = time);
                }
              },
            ),
            const SizedBox(height: 16),
            ListTile(
              title: const Text('End Time'),
              subtitle: Text(endTime?.format(context) ?? 'Not set'),
              trailing: const Icon(Icons.access_time),
              onTap: () async {
                final time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (time != null) {
                  setState(() {
                    endTime = time;
                  });
                }
              },
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              child: const Text('Create Timetable Entry'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // TODO: Implement the logic to create the timetable entry
                  // You can access the selected values: groupId, roomId, dayId, startTime, endTime
                  // and send them to your database or state management solution
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
