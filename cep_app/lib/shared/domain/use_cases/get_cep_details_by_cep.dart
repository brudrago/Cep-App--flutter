import 'package:cep_app/shared/data/async/either.dart';
import 'package:cep_app/shared/data/remote/cep_base_repository.dart';
import 'package:cep_app/shared/domain/entities/cep_response.dart';
import 'package:cep_app/shared/domain/entities/get_cep_details_by_cep_body.dart';
import 'package:cep_app/shared/domain/errors/cep_exception.dart';

class GetCepDetailsByCep {
  final CepBaseRepository _repository;

  const GetCepDetailsByCep(this._repository);

  Future<Either<CepException, CepResponse>> call(
    GetCepDetailsByCepBody body,
  ) async {
    return _repository.getCepDetailByCep(body);
  }
}
