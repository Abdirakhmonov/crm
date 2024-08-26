class AppResponse {
  dynamic data;
  int? statusCode;
  bool isSuccess;
  String errorMessage;

  AppResponse({
    this.data,
    this.statusCode,
    this.isSuccess = true,
    this.errorMessage = '',
  });

  @override
  String toString() =>
      "AppResponse(data: $data, statusCode: $statusCode, isSuccess: $isSuccess, errorMessage: $errorMessage)";
}
