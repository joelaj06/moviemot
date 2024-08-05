import 'package:get/get.dart';


class AppException implements Exception {
  AppException(this.message, this.prefix, this.url);

  String message;
  String prefix;
  String url;
}

class BadRequestException extends AppException {
  BadRequestException(String message, String url)
      : super(message, 'Bad Request', url);
}

class CacheException extends AppException {
  CacheException(String message, String url)
      : super(message, 'Couldn\'t find cached data.', url);
}

class FetchDataException extends AppException {
  FetchDataException(String message, String url)
      : super(message, 'Unable to process', url);
}

class ServerException extends AppException {
  ServerException(String message, String url)
      : super(message, 'Internal Server Error', url);
}

class ApiNotRespondingException extends AppException {
  ApiNotRespondingException(String message, String url)
      : super(message, 'Api Not Responding', url);
}

class UnauthorizedException extends AppException {
  UnauthorizedException(String message, String url)
      : super(message, 'Unauthorized Request', url);


}