import 'package:crm_flutter/data/models/room/room.dart';
import 'package:flutter/material.dart';

class ManageRoomDialog extends StatefulWidget {
  final bool isEdit;
  final Room? room;

  const ManageRoomDialog({
    super.key,
    this.isEdit = false,
    this.room,
  });

  @override
  State<ManageRoomDialog> createState() => _ManageRoomDialogState();
}

class _ManageRoomDialogState extends State<ManageRoomDialog> {
  final TextEditingController _roomName = TextEditingController();
  final TextEditingController _roomDescription = TextEditingController();
  final _roomCapacity = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.isEdit ? 'Edit room' : 'Add new room'),
      actions: [],
    );
  }
}
