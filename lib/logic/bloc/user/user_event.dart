part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUserEvent() = GetUserEvent;

  const factory UserEvent.getUserGroups() = GetUserGroupsEvent;

  const factory UserEvent.updateUserData({
    required String email,
    required String name,
    required String phone,
    required String photoPath,
  }) = UpdateUserDataEvent;
}
