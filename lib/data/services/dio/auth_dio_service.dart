import 'package:crm_flutter/data/services/shared_prefs/token_prefs_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../models/app_response.dart';
import '../../../core/network/dio_client.dart';

class AuthDioService {
  final DioClient _dioClient = DioClient();
  final googleSignIn = GoogleSignIn();

  /// login user using [phone] and [password]
  Future<AppResponse> login({
    required String phone,
    required String password,
  }) async {
    final AppResponse appResponse = AppResponse();

    try {
      final response = await _dioClient.post(url: '/login', data: {
        'phone': phone,
        'password': password,
      });

      appResponse.data = response.data;

      await TokenPrefsService.saveAccessToken(
        appResponse.data['data']['token'],
      );
    } catch (e) {
      if (e is DioException) {
        appResponse.statusCode = e.response?.statusCode;
        appResponse.errorMessage =
            e.response?.data['data']['error'].toString().toLowerCase() ==
                    'unauthorised'
                ? 'Login or password is incorrect'
                : 'Error occurred while login';
      } else {
        appResponse.errorMessage = e.toString();
      }
      appResponse.isSuccess = false;
    }

    return appResponse;
  }

  /// register new user using
  /// [name], [phone], [password], [passwordConfirmation]
  Future<AppResponse> register({
    required String name,
    required String phone,
    required String password,
    required String passwordConfirmation,
    required int roleId,
  }) async {
    final AppResponse appResponse = AppResponse();

    try {
      final response = await _dioClient.post(
        url: '/register',
        data: {
          'name': name,
          'phone': phone,
          'password': password,
          'password_confirmation': passwordConfirmation,
          'role_id': roleId,
        },
      );

      appResponse.data = response.data;

      await TokenPrefsService.saveAccessToken(
        appResponse.data['data']['token'].toString(),
      );
    } catch (e) {
      if (e is DioException) {
        appResponse.statusCode = e.response?.statusCode;

        appResponse.errorMessage = _getErrorMessage(e.response?.data);
      } else {
        appResponse.errorMessage = e.toString();
      }

      appResponse.isSuccess = false;
    }

    return appResponse;
  }

  /// logout user
  Future<void> logOut() async {
    try {
      await _dioClient.post(url: '/logout');
    } catch (e) {
      debugPrint('error occurred in logout');
    }
  }

  Future<void> socialLogin(Map<String, dynamic> data) async {
    final AppResponse appResponse = AppResponse();
    try {
      final response = await _dioClient.post(
        url: '/api/social-login',
        data: data,
      );
      print("Response Social Login: $response");
      appResponse.data = response.data;
      if (appResponse.data != null) {
        await TokenPrefsService.saveAccessToken(
          appResponse.data['data']['token'].toString(),
        );
      } else {
        throw Exception("Token not found in response");
      }
    } on DioException catch (e) {
      print("DioException social login: $e");
      throw (e.response?.data);
    } catch (e) {
      if (e is DioException) {
        appResponse.statusCode = e.response?.statusCode;

        appResponse.errorMessage = _getErrorMessage(e.response?.data);
      } else {
        appResponse.errorMessage = e.toString();
      }

      appResponse.isSuccess = false;
    }
  }

  String? checkTokenExpiry() => TokenPrefsService.getAccessToken();

  String _getErrorMessage(dynamic errorData) {
    if (errorData != null && errorData is Map<String, dynamic>) {
      final errorMessages = errorData['data'] as Map<String, dynamic>?;

      if (errorMessages != null) {
        return errorMessages.values.expand((element) => element).join('\n');
      } else {
        return errorData['message'] ?? 'Unknown error';
      }
    } else {
      return 'Error: No response data';
    }
  }
}
