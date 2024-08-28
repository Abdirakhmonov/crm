import 'package:bloc_test/bloc_test.dart';
import 'package:crm_flutter/data/models/groups/add_group_request.dart';
import 'package:crm_flutter/data/models/groups/group.dart';
import 'package:crm_flutter/data/models/app_response.dart';
import 'package:crm_flutter/data/repositories/admin_group_management_repository.dart';
import 'package:crm_flutter/logic/bloc/admin_group_management/admin_group_management_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Mock classes
class MockAdminGroupManagementRepository extends Mock
    implements AdminGroupManagementRepository {}

class MockGroup extends Mock implements Group {}

void main() {
  late AdminGroupManagementBloc adminGroupManagementBloc;
  late MockAdminGroupManagementRepository mockRepository;
  late MockGroup mockGroup;

  setUp(() {
    mockRepository = MockAdminGroupManagementRepository();
    mockGroup = MockGroup();

    adminGroupManagementBloc = AdminGroupManagementBloc(
      adminGroupManagementRepository: mockRepository,
    );
  });

  tearDown(() {
    adminGroupManagementBloc.close();
  });

  group('AdminGroupManagementBloc GetAllGroups', () {
    final AppResponse successResponse = AppResponse(
      isSuccess: true,
      errorMessage: '',
      data: [
        {'id': 1, 'name': 'Group 1'}, // Sample data
        {'id': 2, 'name': 'Group 2'},
      ],
    );

    final AppResponse failureResponse = AppResponse(
      isSuccess: false,
      errorMessage: 'Failed to load groups',
    );

    blocTest<AdminGroupManagementBloc, AdminGroupState>(
      'emits [LoadingAdminGroupState, LoadedAdminGroupState] when getAllGroups is successful',
      build: () {
        when(() => mockRepository.getAllGroups())
            .thenAnswer((_) async => successResponse);
        return adminGroupManagementBloc;
      },
      act: (bloc) => bloc.add(const GetAllGroupsAdminEvent()),
      expect: () => [
        const LoadingAdminGroupState(),
        LoadedAdminGroupState(allGroups: [
          Group.fromJson({'id': 1, 'name': 'Group 1'}),
          Group.fromJson({'id': 2, 'name': 'Group 2'}),
        ]),
      ],
      verify: (_) {
        verify(() => mockRepository.getAllGroups()).called(1);
      },
    );

    blocTest<AdminGroupManagementBloc, AdminGroupState>(
      'emits [LoadingAdminGroupState, ErrorAdminGroupState] when getAllGroups fails',
      build: () {
        when(() => mockRepository.getAllGroups())
            .thenAnswer((_) async => failureResponse);
        return adminGroupManagementBloc;
      },
      act: (bloc) => bloc.add(const GetAllGroupsAdminEvent()),
      expect: () => [
        const LoadingAdminGroupState(),
        const ErrorAdminGroupState(
            errorMessage:
            'error: {status_code: null, "error_message": Failed to load groups}'),
      ],
      verify: (_) {
        verify(() => mockRepository.getAllGroups()).called(1);
      },
    );
  });

  group('AdminGroupManagementBloc AddGroup', () {
    const AddGroupRequest newGroup = AddGroupRequest(name: 'New Group', mainTeacherId: 1, assistantTeacherId: 2, subjectId: 3);
    final AppResponse successResponse = AppResponse(
      isSuccess: true,
      errorMessage: '',
    );

    final AppResponse failureResponse = AppResponse(
      isSuccess: false,
      errorMessage: 'Failed to add group',
    );

    blocTest<AdminGroupManagementBloc, AdminGroupState>(
      'emits [LoadingAdminGroupState] and triggers GetAllGroupsAdminEvent when addGroup is successful',
      build: () {
        when(() => mockRepository.addGroup(newGroup))
            .thenAnswer((_) async => successResponse);
        when(() => mockRepository.getAllGroups())
            .thenAnswer((_) async => AppResponse(isSuccess: true, data: []));
        return adminGroupManagementBloc;
      },
      act: (bloc) => bloc.add(const AddGroupAdminEvent(newGroup: newGroup)),
      expect: () => [
        const LoadingAdminGroupState(),
        const LoadingAdminGroupState(),
        const LoadedAdminGroupState(allGroups: []),
      ],
      verify: (_) {
        verify(() => mockRepository.addGroup(newGroup)).called(1);
      },
    );

    blocTest<AdminGroupManagementBloc, AdminGroupState>(
      'emits [LoadingAdminGroupState, ErrorAdminGroupState] when addGroup fails',
      build: () {
        when(() => mockRepository.addGroup(newGroup))
            .thenAnswer((_) async => failureResponse);
        return adminGroupManagementBloc;
      },
      act: (bloc) => bloc.add(const AddGroupAdminEvent(newGroup: newGroup)),
      expect: () => [
        const LoadingAdminGroupState(),
        const ErrorAdminGroupState(
            errorMessage:
            'error: {status_code: null, "error_message": Failed to add group}'),
      ],
      verify: (_) {
        verify(() => mockRepository.addGroup(newGroup)).called(1);
      },
    );
  });

  group('AdminGroupManagementBloc EditGroup', () {
    const int groupId = 1;
    const String newName = 'Updated Group';
    const int newMainTeacherId = 10;
    const int newAssistantTeacherId = 20;
    final AppResponse successResponse = AppResponse(
      isSuccess: true,
      errorMessage: '',
    );

    final AppResponse failureResponse = AppResponse(
      isSuccess: false,
      errorMessage: 'Failed to edit group',
    );

    blocTest<AdminGroupManagementBloc, AdminGroupState>(
      'emits [LoadingAdminGroupState] and triggers GetAllGroupsAdminEvent when editGroup is successful',
      build: () {
        when(() => mockRepository.editGroup(
          groupId: groupId,
          newName: newName,
          newMainTeacherId: newMainTeacherId,
          newAssistantTeacherId: newAssistantTeacherId,
        )).thenAnswer((_) async => successResponse);
        when(() => mockRepository.getAllGroups())
            .thenAnswer((_) async => AppResponse(isSuccess: true, data: []));
        return adminGroupManagementBloc;
      },
      act: (bloc) => bloc.add(const EditGroupAdminEvent(
        groupId: groupId,
        newName: newName,
        newMainTeacherId: newMainTeacherId,
        newAssistantTeacherId: newAssistantTeacherId,
      )),
      expect: () => [
        const LoadingAdminGroupState(),
        const LoadingAdminGroupState(),
        const LoadedAdminGroupState(allGroups: []),
      ],
      verify: (_) {
        verify(() => mockRepository.editGroup(
          groupId: groupId,
          newName: newName,
          newMainTeacherId: newMainTeacherId,
          newAssistantTeacherId: newAssistantTeacherId,
        )).called(1);
      },
    );

    blocTest<AdminGroupManagementBloc, AdminGroupState>(
      'emits [LoadingAdminGroupState, ErrorAdminGroupState] when editGroup fails',
      build: () {
        when(() => mockRepository.editGroup(
          groupId: groupId,
          newName: newName,
          newMainTeacherId: newMainTeacherId,
          newAssistantTeacherId: newAssistantTeacherId,
        )).thenAnswer((_) async => failureResponse);
        return adminGroupManagementBloc;
      },
      act: (bloc) => bloc.add(const EditGroupAdminEvent(
        groupId: groupId,
        newName: newName,
        newMainTeacherId: newMainTeacherId,
        newAssistantTeacherId: newAssistantTeacherId,
      )),
      expect: () => [
        const LoadingAdminGroupState(),
        const ErrorAdminGroupState(
            errorMessage:
            'error: {status_code: null, "error_message": Failed to edit group}'),
      ],
      verify: (_) {
        verify(() => mockRepository.editGroup(
          groupId: groupId,
          newName: newName,
          newMainTeacherId: newMainTeacherId,
          newAssistantTeacherId: newAssistantTeacherId,
        )).called(1);
      },
    );
  });

  group('AdminGroupManagementBloc DeleteGroup', () {
    const int groupId = 1;
    final AppResponse successResponse = AppResponse(
      isSuccess: true,
      errorMessage: '',
    );

    final AppResponse failureResponse = AppResponse(
      isSuccess: false,
      errorMessage: 'Failed to delete group',
    );

    blocTest<AdminGroupManagementBloc, AdminGroupState>(
      'emits [LoadingAdminGroupState] and triggers GetAllGroupsAdminEvent when deleteGroup is successful',
      build: () {
        when(() => mockRepository.deleteGroup(groupId: groupId))
            .thenAnswer((_) async => successResponse);
        when(() => mockRepository.getAllGroups())
            .thenAnswer((_) async => AppResponse(isSuccess: true, data: []));
        return adminGroupManagementBloc;
      },
      act: (bloc) => bloc.add(const DeleteGroupAdminEvent(groupId: groupId)),
      expect: () => [
        const LoadingAdminGroupState(),
        const LoadingAdminGroupState(),
        const LoadedAdminGroupState(allGroups: []),
      ],
      verify: (_) {
        verify(() => mockRepository.deleteGroup(groupId: groupId)).called(1);
      },
    );

    blocTest<AdminGroupManagementBloc, AdminGroupState>(
      'emits [LoadingAdminGroupState, ErrorAdminGroupState] when deleteGroup fails',
      build: () {
        when(() => mockRepository.deleteGroup(groupId: groupId))
            .thenAnswer((_) async => failureResponse);
        return adminGroupManagementBloc;
      },
      act: (bloc) => bloc.add(const DeleteGroupAdminEvent(groupId: groupId)),
      expect: () => [
        const LoadingAdminGroupState(),
        const ErrorAdminGroupState(
            errorMessage:
            'error: {status_code: null, "error_message": Failed to delete group}'),
      ],
      verify: (_) {
        verify(() => mockRepository.deleteGroup(groupId: groupId)).called(1);
      },
    );
  });

  group('AdminGroupManagementBloc UpdateGroupStudents', () {
    const int groupId = 1;
    const List<int> updatedStudents = [1, 2, 3];
    final AppResponse successResponse = AppResponse(
      isSuccess: true,
      errorMessage: '',
    );

    final AppResponse failureResponse = AppResponse(
      isSuccess: false,
      errorMessage: 'Failed to update group students',
    );

    blocTest<AdminGroupManagementBloc, AdminGroupState>(
      'emits [LoadingAdminGroupState] and triggers GetAllGroupsAdminEvent when updateGroupStudents is successful',
      build: () {
        when(() => mockRepository.updateGroupStudents(
          groupId: groupId,
          studentsId: updatedStudents,
        )).thenAnswer((_) async => successResponse);
        when(() => mockRepository.getAllGroups())
            .thenAnswer((_) async => AppResponse(isSuccess: true, data: []));
        return adminGroupManagementBloc;
      },
      act: (bloc) => bloc.add(const UpdateGroupStudentsEvent(
        groupId: groupId,
        updatedStudents: updatedStudents,
      )),
      expect: () => [
        const LoadingAdminGroupState(),
        const LoadingAdminGroupState(),
        const LoadedAdminGroupState(allGroups: []),
      ],
      verify: (_) {
        verify(() => mockRepository.updateGroupStudents(
          groupId: groupId,
          studentsId: updatedStudents,
        )).called(1);
      },
    );

    blocTest<AdminGroupManagementBloc, AdminGroupState>(
      'emits [LoadingAdminGroupState, ErrorAdminGroupState] when updateGroupStudents fails',
      build: () {
        when(() => mockRepository.updateGroupStudents(
          groupId: groupId,
          studentsId: updatedStudents,
        )).thenAnswer((_) async => failureResponse);
        return adminGroupManagementBloc;
      },
      act: (bloc) => bloc.add(const UpdateGroupStudentsEvent(
        groupId: groupId,
        updatedStudents: updatedStudents,
      )),
      expect: () => [
        const LoadingAdminGroupState(),
        const ErrorAdminGroupState(
            errorMessage:
            'error: {status_code: null, "error_message": Failed to update group students}'),
      ],
      verify: (_) {
        verify(() => mockRepository.updateGroupStudents(
          groupId: groupId,
          studentsId: updatedStudents,
        )).called(1);
      },
    );
  });
}
