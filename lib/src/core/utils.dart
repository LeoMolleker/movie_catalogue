import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

abstract class Utils {
  static final logger = Logger();

  static void handleApiError<T extends Object>({
    required final DioError error,
    required final String method,
  }) {
    final response = error.response;
    logger
      ..e('Got status ${response?.statusCode} -> ${response?.statusMessage} on $method')
      ..e('At url ${response?.realUri} with the following data ${response?.data}');
    return;
  }
}
