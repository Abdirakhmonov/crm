import 'package:crm_flutter/core/utils/utils.dart';
import 'package:crm_flutter/data/models/groups/group.dart';
import 'package:crm_flutter/logic/bloc/admin_group_management/admin_group_management_bloc.dart';
import 'package:crm_flutter/logic/bloc/admin_management/admin_user_management_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../data/models/user/user.dart';

class EditGroupStudentsDialog extends StatefulWidget {
  final Group group;

  const EditGroupStudentsDialog({super.key, required this.group});

  @override
  State<EditGroupStudentsDialog> createState() =>
      _EditGroupStudentsDialogState();
}

class _EditGroupStudentsDialogState extends State<EditGroupStudentsDialog> {
  final List<User> _selectedStudents = [];

  void _onDeleteStudentTap(int index) {
    widget.group.students.removeAt(index);

    List<int> updatedStudentsIds =
        widget.group.students.map((student) => student.id).toList();

    context.read<AdminGroupManagementBloc>().add(UpdateGroupStudentsEvent(
          groupId: widget.group.id,
          updatedStudents: updatedStudentsIds,
        ));
    Navigator.of(context).pop();
  }

  void _onAddStudentsTap() {
    if (_selectedStudents.isNotEmpty) {
      widget.group.students.addAll(_selectedStudents);

      List<int> updatedStudentsIds =
          widget.group.students.map((student) => student.id).toList();

      context.read<AdminGroupManagementBloc>().add(UpdateGroupStudentsEvent(
            groupId: widget.group.id,
            updatedStudents: updatedStudentsIds,
          ));

      _selectedStudents.clear();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit group students'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Students'),
            if (widget.group.students.isNotEmpty)
              ...List.generate(
                widget.group.students.length,
                (index) {
                  final User student = widget.group.students[index];
                  return ListTile(
                    title: Text(student.name),
                    trailing: IconButton(
                      onPressed: () => _onDeleteStudentTap(index),
                      icon: const Icon(Icons.delete),
                    ),
                    subtitle: Text("Id: ${student.id}"),
                  );
                },
              )
            else
              const Center(child: Text('No students in this group')),
            BlocBuilder<AdminUserManagementBloc, AdminUserManagementState>(
              builder: (context, state) {
                if (state.adminUserManagementStatus ==
                    AdminUserManagementStatus.loaded) {
                  List<User> availableStudents = AppFunction.getUserFromRoleId(
                          roleId: 1, users: state.users ?? [])
                      .where((user) => !widget.group.students.contains(user))
                      .toList();

                  return Column(
                    children: [
                      const Text("Select students to add"),
                      Wrap(
                        children: availableStudents.map((User student) {
                          final bool isSelected =
                              _selectedStudents.contains(student);
                          return _BuildChoiceChip(
                            student: student,
                            isSelected: isSelected,
                            onSelected: (selected) {
                              setState(() {
                                if (selected) {
                                  _selectedStudents.add(student);
                                } else {
                                  _selectedStudents.remove(student);
                                }
                              });
                            },
                          );
                        }).toList(),
                      ),
                    ],
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text(
            'Cancel',
            style: TextStyle(color: AppColors.black),
          ),
        ),
        TextButton(
          onPressed: _onAddStudentsTap,
          child: const Text(
            'Add selected students',
            style: TextStyle(color: AppColors.black),
          ),
        ),
      ],
    );
  }
}

class _BuildChoiceChip extends StatelessWidget {
  final User student;
  final bool isSelected;
  final void Function(bool)? onSelected;

  const _BuildChoiceChip({
    required this.student,
    required this.isSelected,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: ChoiceChip(
        label: Text(
          student.name,
          style: TextStyle(
              color: isSelected ? AppColors.white : AppColors.darkShadeGreen,
              fontWeight: FontWeight.w600),
        ),
        checkmarkColor: AppColors.white,
        selected: isSelected,
        selectedColor: AppColors.blue,
        onSelected: onSelected,
      ),
    );
  }
}
