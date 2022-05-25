import 'package:dio/dio.dart';

import 'token.dart';

class DioConfiguration {
  static final dioInstance = Dio(
    BaseOptions(
      headers: {
        'Authorization': apiToken,
        'Content-Type': 'application/json;charset=utf-8',
      },
    ),
  );
}
