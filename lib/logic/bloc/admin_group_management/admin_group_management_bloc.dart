import 'package:bloc/bloc.dart';
import 'package:crm_flutter/data/models/groups/add_group_request.dart';
import 'package:crm_flutter/data/models/groups/group.dart';
import 'package:crm_flutter/data/repositories/admin_group_management_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

part 'admin_group_management_event.dart';

part 'admin_group_management_state.dart';

class AdminGroupManagementBloc
    extends Bloc<AdminGroupManagementEvent, AdminGroupState> {
  final AdminGroupManagementRepository _adminGroupManagementRepository;

  AdminGroupManagementBloc({
    required AdminGroupManagementRepository adminGroupManagementRepository,
  })  : _adminGroupManagementRepository = adminGroupManagementRepository,
        super(const InitialAdminGroupState()) {
    on<GetAllGroupsAdminEvent>(_onGetAllGroups);
    on<AddGroupAdminEvent>(_onAddGroup);
    on<EditGroupAdminEvent>(_onEditGroup);
    on<DeleteGroupAdminEvent>(_onDeleteGroup);
    on<UpdateGroupStudentsEvent>(_onUpdateGroupStudents);
  }

  void _onGetAllGroups(
    GetAllGroupsAdminEvent event,
    Emitter<AdminGroupState> emit,
  ) async {
    emit(const LoadingAdminGroupState());

    try {
      final appResponse = await _adminGroupManagementRepository.getAllGroups();

      if (appResponse.isSuccess && appResponse.errorMessage.isEmpty) {
        List<Group> allGroups = [];

        for (var data in (appResponse.data as List)) {
          allGroups.add(Group.fromJson(data));
        }

        emit(LoadedAdminGroupState(allGroups: allGroups));
      } else {
        throw 'error: {status_code: ${appResponse.statusCode}, "error_message": ${appResponse.errorMessage}}';
      }
    } catch (e) {
      emit(ErrorAdminGroupState(errorMessage: e.toString()));
    }
  }

  void _onAddGroup(
    AddGroupAdminEvent event,
    Emitter<AdminGroupState> emit,
  ) async {
    emit(const LoadingAdminGroupState());

    try {
      final appResponse =
          await _adminGroupManagementRepository.addGroup(event.newGroup);

      if (appResponse.isSuccess && appResponse.errorMessage.isEmpty) {
        add(const GetAllGroupsAdminEvent());
      } else {
        throw 'error: {status_code: ${appResponse.statusCode}, "error_message": ${appResponse.errorMessage}}';
      }
    } catch (e) {
      emit(ErrorAdminGroupState(errorMessage: e.toString()));
    }
  }

  void _onEditGroup(
    EditGroupAdminEvent event,
    Emitter<AdminGroupState> emit,
  ) async {
    emit(const LoadingAdminGroupState());
    try {
      final appResponse = await _adminGroupManagementRepository.editGroup(
        groupId: event.groupId,
        newName: event.newName,
        newMainTeacherId: event.newMainTeacherId,
        newAssistantTeacherId: event.newAssistantTeacherId,
      );

      if (appResponse.isSuccess && appResponse.errorMessage.isEmpty) {
        add(const GetAllGroupsAdminEvent());
      } else {
        throw 'error: {status_code: ${appResponse.statusCode}, "error_message": ${appResponse.errorMessage}}';
      }
    } catch (e) {
      emit(ErrorAdminGroupState(errorMessage: e.toString()));
    }
  }

  void _onDeleteGroup(
    DeleteGroupAdminEvent event,
    Emitter<AdminGroupState> emit,
  ) async {
    emit(const LoadingAdminGroupState());
    try {
      final appResponse = await _adminGroupManagementRepository.deleteGroup(
        groupId: event.groupId,
      );

      if (appResponse.isSuccess && appResponse.errorMessage.isEmpty) {
        add(const GetAllGroupsAdminEvent());
      } else {
        throw 'error: {status_code: ${appResponse.statusCode}, "error_message": ${appResponse.errorMessage}}';
      }
    } catch (e) {
      emit(ErrorAdminGroupState(errorMessage: e.toString()));
    }
  }

  void _onUpdateGroupStudents(
    UpdateGroupStudentsEvent event,
    Emitter<AdminGroupState> emit,
  ) async {
    emit(const LoadingAdminGroupState());
    try {
      final appResponse =
          await _adminGroupManagementRepository.updateGroupStudents(
        groupId: event.groupId,
        studentsId: event.updatedStudents,
      );

      if (appResponse.isSuccess && appResponse.errorMessage.isEmpty) {
        add(const GetAllGroupsAdminEvent());
      } else {
        throw 'error: {status_code: ${appResponse.statusCode}, "error_message": ${appResponse.errorMessage}}';
      }
    } catch (e) {
      emit(ErrorAdminGroupState(errorMessage: e.toString()));
    }
  }
}
