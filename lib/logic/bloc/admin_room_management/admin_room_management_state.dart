part of 'admin_room_management_bloc.dart';

@freezed
class AdminRoomManagementState with _$AdminRoomManagementState {
  const factory AdminRoomManagementState.initial() = AdminRoomManagementInitial;
  const factory AdminRoomManagementState.loading() = AdminRoomLoading;
  const factory AdminRoomManagementState.loaded(List<Room> rooms) = AdminRoomLoaded;
  const factory AdminRoomManagementState.error(String errorMessage) = AdminRoomError;
}
