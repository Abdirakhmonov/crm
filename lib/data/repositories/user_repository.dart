import 'package:crm_flutter/data/models/app_response.dart';
import 'package:crm_flutter/data/services/dio/user_dio_service.dart';

class UserRepository {
  final UserDioService _userDioService;

  UserRepository({required UserDioService userDioService})
      : _userDioService = userDioService;

  Future<AppResponse> getUser() async => await _userDioService.getUser();

  Future<AppResponse> getUserGroups() async => await _userDioService.getUserGroups();

  Future<AppResponse> updateUser({
    required String email,
    required String name,
    required String phone,
    required String photoPath,
  }) async =>
      await _userDioService.updateUser(
        email: email,
        name: name,
        phone: phone,
        photoPath: photoPath,
      );
}
