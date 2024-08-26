import 'package:crm_flutter/core/network/dio_client.dart';
import 'package:crm_flutter/data/models/app_response.dart';
import 'package:crm_flutter/data/models/user/user.dart';
import 'package:dio/dio.dart';

class UserDioService {
  final DioClient _dioClient = DioClient();

  Future<AppResponse> getUser() async {
    final AppResponse appResponse = AppResponse();

    try {
      final response = await _dioClient.get(url: '/user');
      appResponse.data = User.fromJson(response.data['data']);
    } catch (e) {
      if (e is DioException) {
        appResponse.statusCode = e.response?.statusCode;
      }
      appResponse.errorMessage = e.toString();
      appResponse.isSuccess = false;
    }

    return appResponse;
  }

  Future<AppResponse> getUserGroups() async {
    final AppResponse appResponse = AppResponse();

    try {
      final response = await _dioClient.get(url: '/student/groups');
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

  Future<AppResponse> updateUser({
    required String email,
    required String name,
    required String phone,
    required String photoPath,
  }) async {
    final AppResponse appResponse = AppResponse();
    try {
      FormData formData = FormData.fromMap({
        if (name.isNotEmpty) "name": name,
        if (phone.isNotEmpty) "phone": phone,
        if (email.isNotEmpty) "email": email,
        if (photoPath.isNotEmpty)
          "photo": await MultipartFile.fromFile(
            photoPath,
            filename: photoPath.split('/').last,
          ),
      });

      await _dioClient.post(
        url: '/profile/update',
        formData: formData,
      );
    } catch (e) {
      if (e is DioException) {
        appResponse.statusCode = e.response?.statusCode;
      }
      appResponse.isSuccess = false;
      appResponse.errorMessage = e.toString();
    }

    return appResponse;
  }
}
