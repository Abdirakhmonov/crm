import 'package:bloc/bloc.dart';
import 'package:crm_flutter/data/models/room/room.dart';
import 'package:crm_flutter/data/repositories/admin_room_management_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_room_management_event.dart';

part 'admin_room_management_state.dart';

part 'admin_room_management_bloc.freezed.dart';

class AdminRoomManagementBloc
    extends Bloc<AdminRoomManagementEvent, AdminRoomManagementState> {
  final AdminRoomManagementRepository _adminRoomManagementRepository;

  AdminRoomManagementBloc({
    required AdminRoomManagementRepository adminRoomManagementRepository,
  })  : _adminRoomManagementRepository = adminRoomManagementRepository,
        super(const AdminRoomManagementState.initial()) {
    on<AdminGetAllRoomsEvent>(_onGetAllRooms);
  }

  void _onGetAllRooms(
    AdminGetAllRoomsEvent event,
    Emitter<AdminRoomManagementState> emit,
  ) async {
    emit(const AdminRoomManagementState.loading());
    try {
      final appResponse = await _adminRoomManagementRepository.getRooms();

      if (appResponse.isSuccess && appResponse.errorMessage.isEmpty) {
        List<Room> rooms = [];

        for (var room in (appResponse.data as List<dynamic>)) {
          rooms.add(Room.fromJson(room));
        }

        emit(AdminRoomManagementState.loaded(rooms));
      }
    } catch (e) {
      emit(AdminRoomManagementState.error(e.toString()));
    }
  }
}
