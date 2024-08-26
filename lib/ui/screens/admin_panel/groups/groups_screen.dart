import 'package:crm_flutter/core/utils/app_colors.dart';
import 'package:crm_flutter/logic/bloc/admin_group_management/admin_group_management_bloc.dart';
import 'package:crm_flutter/ui/screens/admin_panel/groups/widgets/add_new_group_dialog.dart';
import 'package:crm_flutter/ui/screens/admin_panel/groups/widgets/group_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroupsScreen extends StatefulWidget {
  const GroupsScreen({super.key});

  @override
  State<GroupsScreen> createState() => _GroupsScreenState();
}

class _GroupsScreenState extends State<GroupsScreen> {
  @override
  void initState() {
    super.initState();
    context
        .read<AdminGroupManagementBloc>()
        .add(const GetAllGroupsAdminEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Group management')),
      body: BlocBuilder<AdminGroupManagementBloc, AdminGroupState>(
        buildWhen: (previous, current) => current is LoadedAdminGroupState,
        builder: (context, state) {
          if (state is LoadingAdminGroupState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ErrorAdminGroupState) {
            return Center(child: Text(state.errorMessage));
          } else if (state is LoadedAdminGroupState) {
            return ListView.builder(
              itemCount: state.allGroups.length,
              padding: const EdgeInsets.only(bottom: kToolbarHeight + 20),
              itemBuilder: (context, index) =>
                  GroupItem(group: state.allGroups[index]),
            );
          }
          return const SizedBox();
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.grayishBlue,
        onPressed: () => showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => const AddNewGroupDialog(),
        ),
        tooltip: 'Add new group',
        child: const Icon(Icons.add),
      ),
    );
  }
}
