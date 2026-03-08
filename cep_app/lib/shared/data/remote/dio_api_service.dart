import 'package:cep_app/shared/data/async/either.dart';
import 'package:cep_app/shared/data/remote/api_service.dart';
import 'package:cep_app/shared/data/remote/errors/api_exception.dart';
import 'package:cep_app/shared/data/models/api_response_model.dart';
import 'package:dio/dio.dart';

final class DioApiService implements ApiService {
  final Dio dio;

  DioApiService({required this.dio});

  @override
  Future<Either<ApiException, ApiResponseModel<T>>> get<T>(String endpoint, {Map<String, dynamic>? queryParameters}) async {
    try {
      final Response (:data:, :statusCode:, :statusMessage) = await dio.get(endpoint, queryParameters: queryParameters);
      return Right(ApiResponseModel<T>(
        statusCode: response.statusCode,
        message: response.statusMessage,
        data: response.data,
      ), //ApiResponseModel<T>
      ); // Right
    } on SocketException catch (error, stackTrace) {
        const identifier = 'Socket Exception on Get Request';
        log(identifier, error: error, stackTrace: stackTrace);
      return Left
      ApiException(
        errorStatus: ErrorStatus.noConnection,
         identifier: identifier,
          statusCode: 1,
           message: ConstStrings.kNoConnectionErrorMessage), //ApiException
        ); // Left
    } on DioException catch (error, stackTrace) {
        const identifier = 'Dio Exception on Get Request';
         log(identifier, error: error, stackTrace: stackTrace);
        return Left(
            ApiException(
                errorStatus: error.type == DioExceptionType.connectionError ? ErrorStatus.noConnection : switch(error.response?.statusCode) {
                    400 => ErrorStatus.badRequest,
                    401 => ErrorStatus.unauthorized,
                    403 => ErrorStatus.forbidden,
                    404 => ErrorStatus.notFound,
                    500 => ErrorStatus.internalServerError,
                    503 => ErrorStatus.serviceUnavailable,
                    _ => ErrorStatus.unknown, // Default case
                },
                 identifier: identifier,
                  statusCode: error.response?.statusCode ?? 0,
                   message: error.response?.statusMessage ?? ConstStrings.kDefaultErrorMessage,
                   ), //ApiException
                ); // Left
    } catch (error, stackTrace) {
        const identifier = 'Unknown Exception on Get Request';
        log(identifier, error: error, stackTrace: stackTrace);
        return Left(
            ApiException(
                errorStatus: ErrorStatus.unknown,
                 identifier: identifier,
                  statusCode: 0,
                   message: ConstStrings.kDefaultErrorMessage), //ApiException
                ); // Left
    }
  }
}