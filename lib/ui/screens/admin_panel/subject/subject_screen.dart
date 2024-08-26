import 'package:crm_flutter/core/utils/app_colors.dart';
import 'package:crm_flutter/logic/bloc/admin_subject_management/admin_subject_management_bloc.dart';
import 'package:crm_flutter/ui/screens/admin_panel/subject/widgets/manage_subject_dialog.dart';
import 'package:crm_flutter/ui/screens/admin_panel/subject/widgets/subject_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubjectsScreen extends StatefulWidget {
  const SubjectsScreen({super.key});

  @override
  State<SubjectsScreen> createState() => _SubjectsScreenState();
}

class _SubjectsScreenState extends State<SubjectsScreen> {

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Subjects management')),
        body: BlocBuilder<AdminSubjectManagementBloc,
            AdminSubjectManagementState>(
          buildWhen: (previous, current) =>
              current.adminSubjectManagementStatus ==
              AdminSubjectManagementStatus.loaded,
          builder: (context, state) {
            if (state.adminSubjectManagementStatus ==
                AdminSubjectManagementStatus.loaded) {
              return state.subjects != null && state.subjects!.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'All subjects',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              padding: const EdgeInsets.only(top: 10),
                              itemCount: state.subjects!.length,
                              itemBuilder: (context, index) => SubjectWidget(
                                subject: state.subjects![index],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : const Center(
                      child: Text('No subjects available'),
                    );
            }
            return const Center(
              child: Text('Something went wrong'),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.grayishBlue,
          onPressed: () => showDialog(
            context: context,
            builder: (context) => const ManageSubjectDialog(),
          ),
          child: const Icon(Icons.add, color: AppColors.white),
        ),
      );
}
