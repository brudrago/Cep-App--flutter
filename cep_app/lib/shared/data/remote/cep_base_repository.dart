import 'package:cep_app/shared/data/async/either.dart' show Either;
import 'package:cep_app/shared/domain/entities/cep_response.dart';
import 'package:cep_app/shared/domain/entities/get_cep_details_by_cep_body.dart';
import 'package:cep_app/shared/domain/entities/get_cep_details_list_by_local_details_body.dart';
import 'package:cep_app/shared/domain/errors/cep_exception.dart';

abstract interface class CepBaseRepository {
  Future<Either<CepException, CepResponse>> getCepDetailByCep(
    GetCepDetailsByCepBody body,
  );

  Future<Either<CepException, List<CepResponse>>>
  getCepDetailsListByLocalDetails(GetCepDetailsListByLocalDetailsBody body);
}
