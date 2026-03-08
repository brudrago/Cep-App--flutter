base class BaseException implements Exception {
  final String message;

  const BaseException({
    String? message }) : message = message ?? ConstStrings.kDefaultErrorMessage;
}