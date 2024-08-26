import 'package:crm_flutter/data/models/groups/group.dart';
import 'package:crm_flutter/data/models/user/user.dart';
import 'package:crm_flutter/logic/bloc/admin_group_management/admin_group_management_bloc.dart';
import 'package:crm_flutter/logic/bloc/admin_management/admin_user_management_bloc.dart';
import 'package:crm_flutter/ui/screens/admin_panel/groups/widgets/build_pop_up_menu_button.dart';
import 'package:crm_flutter/ui/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_functions.dart';

class EditGroupDialog extends StatefulWidget {
  final Group group;

  const EditGroupDialog({super.key, required this.group});

  @override
  State<EditGroupDialog> createState() => _EditGroupDialogState();
}

class _EditGroupDialogState extends State<EditGroupDialog> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _newGroupNameController = TextEditingController();

  User? _selectedMainTeacher;
  User? _selectedAssistantTeacher;

  @override
  void initState() {
    super.initState();
    _newGroupNameController.text = widget.group.name;
  }

  void _onSaveTap() {
    if (_formKey.currentState!.validate() &&
        _selectedMainTeacher != null &&
        _selectedAssistantTeacher != null) {
      context.read<AdminGroupManagementBloc>().add(EditGroupAdminEvent(
            groupId: widget.group.id,
            newName: _newGroupNameController.text,
            newMainTeacherId: _selectedMainTeacher!.id,
            newAssistantTeacherId: _selectedAssistantTeacher!.id,
          ));
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit main teacher'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Current main teacher name: ${widget.group.mainTeacher.name}',
          ),
          Text(
            'Current assistant teacher name: ${widget.group.mainTeacher.name}',
          ),
          Form(
            key: _formKey,
            child: AppTextFormField(
              controller: _newGroupNameController,
              validator: (p0) =>
                  p0 == null || p0.trim().isEmpty ? 'Enter group name' : null,
            ),
          ),
          BlocBuilder<AdminUserManagementBloc, AdminUserManagementState>(
            builder: (context, state) {
              if (state.adminUserManagementStatus ==
                  AdminUserManagementStatus.loaded) {
                /// getting teacher from list
                final List<User> teachers = AppFunction.getUserFromRoleId(
                  roleId: 2,
                  users: state.users ?? [],
                );

                _selectedMainTeacher ??= widget.group.mainTeacher;
                _selectedAssistantTeacher ??= widget.group.assistantTeacher;

                return Column(
                  children: [
                    BuildPopUpMenuButton(
                      label: "Main teacher",
                      selectedTeacher: _selectedMainTeacher,
                      users: teachers,
                      onSelected: (value) => setState(
                        () => _selectedMainTeacher = value,
                      ),
                    ),
                    BuildPopUpMenuButton(
                      label: "Assistant teacher",
                      selectedTeacher: _selectedAssistantTeacher,
                      users: teachers,
                      onSelected: (value) => setState(
                        () => _selectedMainTeacher = value,
                      ),
                    ),
                  ],
                );
              } else if (state.adminUserManagementStatus ==
                  AdminUserManagementStatus.error) {
                return Center(child: Text("error: ${state.error}"));
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: _onSaveTap,
          child: const Text('Save'),
        ),
      ],
    );
  }
}
