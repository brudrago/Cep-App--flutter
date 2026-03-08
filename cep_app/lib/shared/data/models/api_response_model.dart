final class ApiResponseModel<T> extends ApiBaseModel {
  final T data;
  
  const ApiResponseModel({
    required super.statusCode,
    required this.data,
    super.message,
  });
}