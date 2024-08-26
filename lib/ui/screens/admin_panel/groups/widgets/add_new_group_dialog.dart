import 'package:crm_flutter/core/utils/utils.dart';
import 'package:crm_flutter/data/models/groups/add_group_request.dart';
import 'package:crm_flutter/data/models/subject/subject.dart';
import 'package:crm_flutter/data/models/user/user.dart';
import 'package:crm_flutter/ui/screens/admin_panel/groups/widgets/build_pop_up_menu_button.dart';
import 'package:crm_flutter/ui/screens/admin_panel/groups/widgets/manage_add_groups_subject.dart';
import 'package:crm_flutter/ui/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../logic/bloc/admin_group_management/admin_group_management_bloc.dart';
import '../../../../../logic/bloc/admin_management/admin_user_management_bloc.dart';

class AddNewGroupDialog extends StatefulWidget {
  const AddNewGroupDialog({super.key});

  @override
  State<AddNewGroupDialog> createState() => _AddNewGroupDialogState();
}

class _AddNewGroupDialogState extends State<AddNewGroupDialog> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _groupNameController = TextEditingController();

  User? _selectedMainTeacher;
  User? _selectedAssistantTeacher;
  Subject? _selectedSubject;

  @override
  void dispose() {
    _groupNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add New Group'),
      content: BlocBuilder<AdminUserManagementBloc, AdminUserManagementState>(
        builder: (context, state) {
          if (state.adminUserManagementStatus == AdminUserManagementStatus.loaded &&
              state.users != null &&
              state.users!.isNotEmpty) {
            final List<User> teachers = AppFunction.getUserFromRoleId(
                roleId: 2, users: state.users ?? []);

            if (_selectedMainTeacher == null) {
              _selectedMainTeacher = teachers.first;
              _selectedAssistantTeacher = teachers.first;
            }

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Form(
                  key: _formKey,
                  child: AppTextFormField(
                    labelText: 'Group Name',
                    textInputAction: TextInputAction.next,
                    controller: _groupNameController,
                    validator: (value) =>
                        value!.isEmpty ? 'Please enter a group name' : null,
                  ),
                ),
                const SizedBox(height: 16),
                BuildPopUpMenuButton(
                  label: 'Choose a Teacher',
                  selectedTeacher: _selectedMainTeacher,
                  users: teachers,
                  onSelected: (value) =>
                      setState(() => _selectedMainTeacher = value),
                ),
                const SizedBox(height: 16),
                BuildPopUpMenuButton(
                  label: 'Choose an Assistant Teacher',
                  selectedTeacher: _selectedAssistantTeacher,
                  users: teachers,
                  onSelected: (value) =>
                      setState(() => _selectedAssistantTeacher = value),
                ),
                ManageAddGroupsSubject(
                  selectedSubject: _selectedSubject,
                  label: 'Choose a subject',
                  onSelected: (value) =>
                      setState(() => _selectedSubject = value),
                )
              ],
            );
          }
          return const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: CircularProgressIndicator(color: Colors.black),
              ),
            ],
          );
        },
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            if (_formKey.currentState!.validate() && _selectedSubject != null) {
              final AddGroupRequest addGroupRequest = AddGroupRequest(
                subjectId: _selectedSubject!.id,
                name: _groupNameController.text,
                mainTeacherId: _selectedMainTeacher?.id ?? -1,
                assistantTeacherId: _selectedAssistantTeacher?.id ?? -1,
              );

              context.read<AdminGroupManagementBloc>().add(
                    AddGroupAdminEvent(newGroup: addGroupRequest),
                  );
              Navigator.of(context).pop();
            }
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
