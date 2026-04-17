import 'package:cep_app/shared/data/async/either.dart';
import 'package:cep_app/shared/data/remote/errors/api_exception.dart';
import 'package:cep_app/shared/data/models/api_response_model.dart';

abstract interface class ApiService {
  Future<Either<ApiException, ApiResponseModel<T>>> get<T>(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  });
}
