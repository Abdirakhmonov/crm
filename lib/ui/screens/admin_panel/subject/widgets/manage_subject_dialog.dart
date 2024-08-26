import 'package:crm_flutter/data/models/subject/subject.dart';
import 'package:crm_flutter/logic/bloc/admin_subject_management/admin_subject_management_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../widgets/app_text_form_field.dart';

class ManageSubjectDialog extends StatefulWidget {
  final bool isEdit;
  final Subject? subject;

  const ManageSubjectDialog({
    super.key,
    this.isEdit = false,
    this.subject,
  });

  @override
  State<ManageSubjectDialog> createState() => _ManageSubjectDialogState();
}

class _ManageSubjectDialogState extends State<ManageSubjectDialog> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.isEdit) {
      _controller.text = widget.subject?.name ?? '';
    }
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
        title: Text(widget.isEdit ? 'Edit subject' : 'Add new subject'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Form(
              key: _formKey,
              child: AppTextFormField(
                controller: _controller,
                labelText: 'Subject name',
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: AppColors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (widget.isEdit) {
                  context.read<AdminSubjectManagementBloc>().add(
                        AdminSubjectManagementEvent.edit(
                          id: widget.subject?.id.toString() ?? '',
                          name: _controller.text,
                        ),
                      );
                } else {
                  context
                      .read<AdminSubjectManagementBloc>()
                      .add(AdminSubjectManagementEvent.add(
                        name: _controller.text,
                      ));
                }
                Navigator.pop(context);
              }
            },
            child: const Text(
              'Save',
              style: TextStyle(
                color: AppColors.black,
              ),
            ),
          ),
        ],
      );
}
