import 'package:cep_app/shared/data/errors/base_exception.dart';

base class CepException extends BaseException {
  const CepException(String message) : super(message: message);

  @override
  String toString() => 'CepException: $message';
}
