import 'package:crm_flutter/core/network/dio_client.dart';
import 'package:crm_flutter/data/models/groups/add_group_request.dart';
import 'package:dio/dio.dart';

import '../../models/app_response.dart';

class AdminGroupManagementDioService {
  final DioClient _dioClient = DioClient();

  Future<AppResponse> getAllGroups() async {
    final AppResponse appResponse = AppResponse();

    try {
      final response = await _dioClient.get(url: '/groups');

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

  Future<AppResponse> addNewGroup(AddGroupRequest newGroup) async {
    final AppResponse appResponse = AppResponse();

    try {
      final response = await _dioClient.post(
        url: '/groups',
        data: newGroup.toMap(),
      );

      appResponse.data = response.data;
    } catch (e) {
      if (e is DioException) {
        appResponse.statusCode = e.response?.statusCode;
      }
      appResponse.errorMessage = e.toString();
      appResponse.isSuccess = false;
    }

    return appResponse;
  }

  Future<AppResponse> editGroup({
    required int groupId,
    required String newName,
    required int newMainTeacherId,
    required int newAssistantTeacherId,
  }) async {
    final AppResponse appResponse = AppResponse();

    try {
      final response = await _dioClient.put(
        url: '/groups/$groupId',
        data: {
          "name": newName,
          "main_teacher_id": newMainTeacherId,
          "assistant_teacher_id": newAssistantTeacherId,
        },
      );
      appResponse.data = response.data;
    } catch (e) {
      if (e is DioException) {
        appResponse.statusCode = e.response?.statusCode;
      }
      appResponse.errorMessage = e.toString();
      appResponse.isSuccess = false;
    }

    return appResponse;
  }

  Future<AppResponse> deleteGroup({required int groupId}) async {
    final AppResponse appResponse = AppResponse();

    try {
      final response = await _dioClient.delete(
        url: '/groups/$groupId',
      );
      appResponse.data = response.data;
    } catch (e) {
      if (e is DioException) {
        appResponse.statusCode = e.response?.statusCode;
      }
      appResponse.errorMessage = e.toString();
      appResponse.isSuccess = false;
    }

    return appResponse;
  }

  Future<AppResponse> updateGroupStudents({
    required int groupId,
    required List<int> studentsId,
  }) async {
    final AppResponse appResponse = AppResponse();

    try {
      final response = await _dioClient.post(
        url: '/groups/$groupId/students',
        data: {
          "students": studentsId,
        },
      );
      appResponse.data = response.data;
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
