part of 'admin_subject_management_bloc.dart';

@freezed
class AdminSubjectManagementEvent with _$AdminSubjectManagementEvent {
  const factory AdminSubjectManagementEvent.getAll() = GetAllSubjectsEvent;

  const factory AdminSubjectManagementEvent.getOne({
    required String id,
  }) = GetOneSubjectEvent;

  const factory AdminSubjectManagementEvent.add({
    required String name,
  }) = AddSubjectEvent;

  const factory AdminSubjectManagementEvent.edit({
    required String id,
    required String name,
  }) = EditSubjectEvent;

  const factory AdminSubjectManagementEvent.delete({
    required String id,
  }) = DeleteSubjectsEvent;
}
