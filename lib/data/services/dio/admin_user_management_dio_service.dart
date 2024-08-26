import 'package:crm_flutter/core/network/dio_client.dart';
import 'package:dio/dio.dart';

import '../../models/app_response.dart';

class AdminManagementDioService {
  final DioClient _dioClient = DioClient();

  Future<AppResponse> getAllUsers() async {
    final AppResponse appResponse = AppResponse();

    try {
      final response = await _dioClient.get(url: '/users');

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

}
