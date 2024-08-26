part of 'admin_user_management_bloc.dart';

enum AdminUserManagementStatus { initial, loading, loaded, error }

@freezed
class AdminUserManagementState with _$AdminUserManagementState {
  const factory AdminUserManagementState({
    List<User>? users,
    @Default(AdminUserManagementStatus.initial)
    AdminUserManagementStatus adminUserManagementStatus,
    String? error,
  }) = _AdminUserManagementState;
}
