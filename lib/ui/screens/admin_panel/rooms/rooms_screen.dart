import 'package:crm_flutter/app_config.dart';
import 'package:crm_flutter/core/utils/utils.dart';
import 'package:crm_flutter/logic/bloc/admin_room_management/admin_room_management_bloc.dart';
import 'package:crm_flutter/ui/screens/admin_panel/rooms/widgets/manage_room_dialog.dart';
import 'package:crm_flutter/ui/screens/admin_panel/rooms/widgets/room_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/room/room.dart';

class RoomsScreen extends StatefulWidget {
  const RoomsScreen({super.key});

  @override
  State<RoomsScreen> createState() => _RoomsScreenState();
}

class _RoomsScreenState extends State<RoomsScreen> {
  @override
  void initState() {
    super.initState();
    getIt
        .get<AdminRoomManagementBloc>()
        .add(const AdminRoomManagementEvent.getAllRooms());
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Rooms management')),
        body: BlocBuilder<AdminRoomManagementBloc, AdminRoomManagementState>(
          // bloc: getIt.get<AdminRoomManagementBloc>()
          //   ..add(const AdminRoomManagementEvent.getAllRooms()),
          builder: (context, state) => state.when(
            initial: () => const _CustomCircularProgressIndicator(),
            loading: () => const _CustomCircularProgressIndicator(),
            loaded: (List<Room> rooms) => ListView.builder(
              itemCount: rooms.length,
              padding: const EdgeInsets.all(15),
              itemBuilder: (context, index) => RoomWidget(room: rooms[index]),
            ),
            error: (String errorMessage) => Center(child: Text(errorMessage)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          tooltip: 'Add new room',
          backgroundColor: AppColors.darkShadeGreen.withOpacity(0.1),
          onPressed: () => showDialog(
            context: context,
            builder: (context) => ManageRoomDialog(),
          ),
          child: const Icon(Icons.add, color: AppColors.white),
        ),
      );
}

class _CustomCircularProgressIndicator extends StatelessWidget {
  const _CustomCircularProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.blue,
      ),
    );
  }
}
