import 'package:crm_flutter/core/utils/utils.dart';
import 'package:crm_flutter/data/models/subject/subject.dart';
import 'package:crm_flutter/logic/bloc/admin_subject_management/admin_subject_management_bloc.dart';
import 'package:crm_flutter/ui/screens/admin_panel/subject/widgets/manage_subject_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class SubjectWidget extends StatelessWidget {
  final Subject subject;

  const SubjectWidget({super.key, required this.subject});

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.grayishBlue.withOpacity(0.2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ID: ${subject.id.toString()}",
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            Text("Name ${subject.name}"),
            Text(
                "Created at: ${DateFormat('MM-dd-yyyy HH:mm').format(subject.createdAt)}"),
            15.sizedBoxH,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) => ManageSubjectDialog(
                      isEdit: true,
                      subject: subject,
                    ),
                  ),
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                        'Are you sure, you want to delete this subject?',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text(
                            'Cancel',
                            style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            context
                                .read<AdminSubjectManagementBloc>()
                                .add(DeleteSubjectsEvent(
                                  id: subject.id.toString(),
                                ));
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'Yes',
                            style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  child: const Text(
                    'Delete',
                    style: TextStyle(
                      color: AppColors.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
}
