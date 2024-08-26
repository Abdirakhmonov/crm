part of 'admin_room_management_bloc.dart';

@freezed
class AdminRoomManagementEvent with _$AdminRoomManagementEvent {
  const factory AdminRoomManagementEvent.getAllRooms() = AdminGetAllRoomsEvent;
}
