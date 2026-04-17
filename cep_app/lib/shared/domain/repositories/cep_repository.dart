import 'package:cep_app/shared/data/async/either.dart';
import 'package:cep_app/shared/data/remote/cep_base_repository.dart';
import 'package:cep_app/shared/domain/entities/cep_response.dart';
import 'package:cep_app/shared/domain/entities/get_cep_details_by_cep_body.dart';
import 'package:cep_app/shared/domain/errors/cep_exception.dart';

class CepRepository implements CepBaseRepository {
  @override
  Future<Either<CepException, CepResponse>> getCepDetailByCep(
    GetCepDetailsByCepBody body,
  ) async {
    throw UnimplementedError(
      'CepRepository.getCepDetailByCep is not implemented.',
    );
  }
}
