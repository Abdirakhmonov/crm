import 'package:crm_flutter/core/network/dio_client.dart';
import 'package:crm_flutter/data/models/app_response.dart';
import 'package:dio/dio.dart';

class AdminRoomManagementDioService {
  final DioClient _dioClient = DioClient();

  Future<AppResponse> getRooms() async {
    final AppResponse appResponse = AppResponse();

    try {
      final response = await _dioClient.get(url: '/rooms');
      appResponse.data = response.data['data'];
    } catch (e) {
      if (e is DioException) {
        appResponse.statusCode = e.response?.statusCode;
      }
      appResponse.errorMessage = e.toString();
      appResponse.isSuccess = false;
    }

    return appResponse;
  }

  // Future<AppResponse> addNewRoom() async {}
}
