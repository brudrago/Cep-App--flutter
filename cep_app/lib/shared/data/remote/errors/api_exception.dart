import 'package:cep_app/shared/data/models/api_base_model.dart';
enum ErrorStatus {
  badRequest,
  unauthorized,
  noConnection,
  internalServerError,
  unknown,
}


final class ApiException extends ApiBaseModel implements Exception {
    final ErrorStatus errorStatus;
    final String identifier; 

    ApiException({
        required this.errorStatus,
        required this.identifier,
        required super.statusCode,
        super.message,
    });
}