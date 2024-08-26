part of 'admin_group_management_bloc.dart';

@immutable
sealed class AdminGroupState {
  const AdminGroupState();
}

final class InitialAdminGroupState extends AdminGroupState {
  const InitialAdminGroupState();
}

final class LoadingAdminGroupState extends AdminGroupState {
  const LoadingAdminGroupState();
}

final class LoadedAdminGroupState extends AdminGroupState {
  final List<Group> allGroups;

  const LoadedAdminGroupState({required this.allGroups});
}

final class ErrorAdminGroupState extends AdminGroupState {
  final String errorMessage;

  const ErrorAdminGroupState({required this.errorMessage});
}

