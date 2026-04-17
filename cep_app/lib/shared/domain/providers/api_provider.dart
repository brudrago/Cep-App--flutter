import 'package:cep_app/shared/data/remote/api_service.dart';
import 'package:cep_app/shared/data/remote/dio_api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

final apiServiceProvider = Provider<ApiService>(
  (ref) => DioApiService(
    dio: Dio(
      BaseOptions(
        baseUrl: 'https://viacep.com.br/ws',
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
      ),
    ),
  ),
);
