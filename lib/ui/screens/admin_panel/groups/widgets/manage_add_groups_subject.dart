import 'package:crm_flutter/data/models/subject/subject.dart';
import 'package:crm_flutter/logic/bloc/admin_subject_management/admin_subject_management_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManageAddGroupsSubject extends StatelessWidget {
  final String label;
  final Subject? selectedSubject;
  final ValueChanged<Subject> onSelected;


  const ManageAddGroupsSubject({
    super.key,
    required this.label,
    this.selectedSubject,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminSubjectManagementBloc, AdminSubjectManagementState>(
      buildWhen: (previous, current) =>
          current.adminSubjectManagementStatus ==
          AdminSubjectManagementStatus.loaded,
      builder: (context, state) {
        if (state.adminSubjectManagementStatus ==
            AdminSubjectManagementStatus.loaded) {
          return state.subjects != null && state.subjects!.isNotEmpty
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PopupMenuButton<Subject>(
                      onSelected: onSelected,
                      itemBuilder: (context) {
                        return state.subjects!.map((Subject subject) {
                          return PopupMenuItem<Subject>(
                            value: subject,
                            child: Text(subject.name),
                          );
                        }).toList();
                      },
                      child: ListTile(
                        title: Text(
                          selectedSubject != null
                              ? selectedSubject?.name??''
                              : label,
                        ),
                        trailing: const Icon(Icons.arrow_drop_down),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                )
              : const Center(child: Text('Create subjects first'));
        }
        return const SizedBox();
      },
    );
  }
}
