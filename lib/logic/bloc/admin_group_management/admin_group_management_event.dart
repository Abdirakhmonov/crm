part of 'admin_group_management_bloc.dart';

@immutable
sealed class AdminGroupManagementEvent {
  const AdminGroupManagementEvent();
}

final class GetAllGroupsAdminEvent extends AdminGroupManagementEvent {
  const GetAllGroupsAdminEvent();
}

final class AddGroupAdminEvent extends AdminGroupManagementEvent {
  final AddGroupRequest newGroup;

  const AddGroupAdminEvent({required this.newGroup});
}

final class EditGroupAdminEvent extends AdminGroupManagementEvent {
  final int groupId;
  final String newName;
  final int newMainTeacherId;
  final int newAssistantTeacherId;

  const EditGroupAdminEvent({
    required this.groupId,
    required this.newName,
    required this.newMainTeacherId,
    required this.newAssistantTeacherId,
  });
}

final class DeleteGroupAdminEvent extends AdminGroupManagementEvent {
  final int groupId;

  const DeleteGroupAdminEvent({required this.groupId});
}

final class UpdateGroupStudentsEvent extends AdminGroupManagementEvent {
  final int groupId;
  final List<int> updatedStudents;

  const UpdateGroupStudentsEvent({
    required this.groupId,
    required this.updatedStudents,
  });
}