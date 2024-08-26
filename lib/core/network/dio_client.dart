import 'package:crm_flutter/data/services/shared_prefs/token_prefs_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

class DioClient {
  final _dio = Dio();

  DioClient._private() {
    _dio
      ..options.baseUrl = 'http://millima.flutterwithakmaljon.uz/api'
      ..options.connectTimeout = const Duration(seconds: 10)
      ..options.receiveTimeout = const Duration(seconds: 10)
      ..options.responseType = ResponseType.json
      ..interceptors.add(DioInterceptor())
      ..interceptors.add(
        TalkerDioLogger(
          settings: const TalkerDioLoggerSettings(
            printRequestHeaders: true,
            printResponseHeaders: true,
            printResponseMessage: true,
            printErrorData: true,
            printErrorHeaders: true,
            printErrorMessage: true,
            printRequestData: true,
            printResponseData: true,
          ),
        ),
      );
  }

  static final _singletonConstructor = DioClient._private();

  factory DioClient() => _singletonConstructor;

  Future<Response> get({
    required String url,
    Map<String, dynamic>? queryParams,
    Options? options,
  }) async {
    try {
      final response = await _dio.get(
        url,
        queryParameters: queryParams,
        options: options,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> post({
    required String url,
    Map<String, dynamic>? data,
    FormData? formData,
    Options? options,
  }) async {
    try {
      final response = await _dio.post(
        url,
        data: data ?? formData,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> put({
    required String url,
    required Map<String, dynamic> data,
  }) async {
    try {
      final response = await _dio.put(
        url,
        data: data,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> delete({required String url}) async {
    try {
      return await _dio.delete(url);
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}

/// [DioInterceptor] for [DioClient]
class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final accessToken = TokenPrefsService.getAccessToken();

    if (accessToken != null) {
      options.headers['Authorization'] = "Bearer $accessToken";
    }

    if (options.connectTimeout != null &&
        options.connectTimeout! < const Duration(milliseconds: 300)) {
      options.connectTimeout = const Duration(milliseconds: 300);
    }

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint("INTERCEPTOR: response.data: ${response.data}");
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint("INTERCEPTOR: error: ${err.response?.data}");
    handler.next(err);
  }
}
