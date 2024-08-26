import 'package:crm_flutter/data/models/app_response.dart';
import 'package:crm_flutter/data/services/dio/admin_room_management_dio_service.dart';

class AdminRoomManagementRepository {
  final AdminRoomManagementDioService _adminRoomManagementDioService;

  AdminRoomManagementRepository({
    required AdminRoomManagementDioService adminRoomManagementDioService,
  }) : _adminRoomManagementDioService = adminRoomManagementDioService;

  Future<AppResponse> getRooms() async =>
      _adminRoomManagementDioService.getRooms();
}
