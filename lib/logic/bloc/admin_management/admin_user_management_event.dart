part of 'admin_user_management_bloc.dart';

@freezed
class AdminUserManagementEvent with _$AdminUserManagementEvent {
  const factory AdminUserManagementEvent.getAllUsers() = GetAllUsersEvent;

}
