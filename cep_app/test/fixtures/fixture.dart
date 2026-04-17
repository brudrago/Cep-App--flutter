import 'package:cep_app/shared/domain/entities/get_cep_details_by_cep_body.dart';
import 'package:cep_app/shared/features/cep/domain/entities/cep_response.dart';

const dummyCep = CepResponse(
    cep: '03421030',
    logradouro: 'logradouro',
    complemento: 'complemento',
    bairro: 'bairro',
    localidade: 'localidade',
    uf: 'uf');

const dummyBody = GetCepDetailsByCepBody(cep: '03421030');