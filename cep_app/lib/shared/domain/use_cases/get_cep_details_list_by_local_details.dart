import 'package:cep_app/shared/data/async/either.dart';
import 'package:cep_app/shared/domain/entities/cep_response.dart';
import 'package:cep_app/shared/domain/entities/get_cep_details_list_by_local_details_body.dart';
import 'package:cep_app/shared/domain/errors/cep_exception.dart';
import 'package:cep_app/shared/domain/repositories/cep_repository.dart';

class GetCepDetailsListByLocalDetails {
  final CepRepository _repository;

  GetCepDetailsListByLocalDetails(this._repository);

  Future<Either<CepException, List<CepResponse>>> call(
    GetCepDetailsListByLocalDetailsBody body,
  ) async {
    return _repository.getCepDetailsListByLocalDetails(body);
  }
}
