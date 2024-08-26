import 'package:crm_flutter/core/network/dio_client.dart';
import 'package:crm_flutter/data/models/app_response.dart';
import 'package:dio/dio.dart';

class AdminSubjectManagementDioService {
  final DioClient _dioClient = DioClient();

  Future<AppResponse> getAllSubjects() async {
    final AppResponse appResponse = AppResponse();

    try {
      final response = await _dioClient.get(url: '/subjects');

      appResponse.data = response.data['data'];
    } catch (e) {
      appResponse.isSuccess = false;

      if (e is DioException) {
        appResponse.errorMessage = e.response?.data.toString() ?? 'error';
        appResponse.statusCode = e.response?.statusCode;
      } else {
        appResponse.errorMessage = e.toString();
      }
    }

    return appResponse;
  }

  Future<AppResponse> getOneSubject({required String id}) async {
    final AppResponse appResponse = AppResponse();

    try {
      final response = await _dioClient.get(url: '/subjects/$id');

      appResponse.data = response.data['data'];
    } catch (e) {
      appResponse.isSuccess = false;

      if (e is DioException) {
        appResponse.errorMessage = e.response?.data.toString() ?? 'error';
        appResponse.statusCode = e.response?.statusCode;
      } else {
        appResponse.errorMessage = e.toString();
      }
    }

    return appResponse;
  }

  Future<AppResponse> addSubject({required String name}) async {
    final AppResponse appResponse = AppResponse();

    try {
      final response = await _dioClient.post(
        url: '/subjects',
        data: {'name': name},
      );

      appResponse.data = response.data['data'];
    } catch (e) {
      appResponse.isSuccess = false;

      if (e is DioException) {
        appResponse.errorMessage = e.response?.data.toString() ?? 'error';
        appResponse.statusCode = e.response?.statusCode;
      } else {
        appResponse.errorMessage = e.toString();
      }
    }

    return appResponse;
  }

  Future<AppResponse> editSubject({
    required String id,
    required String name,
  }) async {
    final AppResponse appResponse = AppResponse();

    try {
      final response = await _dioClient.put(
        url: '/subjects/$id',
        data: {'name': name},
      );

      appResponse.data = response.data['data'];
    } catch (e) {
      appResponse.isSuccess = false;

      if (e is DioException) {
        appResponse.errorMessage = e.response?.data.toString() ?? 'error';
        appResponse.statusCode = e.response?.statusCode;
      } else {
        appResponse.errorMessage = e.toString();
      }
    }

    return appResponse;
  }

  Future<AppResponse> deleteSubject({required String id}) async {
    final AppResponse appResponse = AppResponse();

    try {
      final response = await _dioClient.delete(url: '/subjects/$id');

      appResponse.data = response.data['data'];
    } catch (e) {
      appResponse.isSuccess = false;

      if (e is DioException) {
        appResponse.errorMessage = e.response?.data.toString() ?? 'error';
        appResponse.statusCode = e.response?.statusCode;
      } else {
        appResponse.errorMessage = e.toString();
      }
    }

    return appResponse;
  }
}
