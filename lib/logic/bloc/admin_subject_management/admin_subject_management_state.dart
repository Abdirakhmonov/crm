part of 'admin_subject_management_bloc.dart';

enum AdminSubjectManagementStatus { initial, loading, loaded, error }

@freezed
class AdminSubjectManagementState with _$AdminSubjectManagementState {
  const factory AdminSubjectManagementState({
    List<Subject>? subjects,
    @Default(AdminSubjectManagementStatus.initial)
    AdminSubjectManagementStatus adminSubjectManagementStatus,
    String? error,
  }) = _AdminSubjectManagementState;
}
