import 'package:cep_app/shared/domain/entities/get_cep_details_by_cep_body.dart';
import 'package:cep_app/shared/domain/entities/cep_response.dart';
import 'package:cep_app/shared/domain/entities/get_cep_details_list_by_local_details_body.dart';
import 'package:cep_app/shared/domain/errors/cep_exception.dart';

const dummyCep = CepResponse(
  cep: '03421030',
  logradouro: 'logradouro',
  complemento: 'complemento',
  bairro: 'bairro',
  localidade: 'localidade',
  uf: 'uf',
  estado: 'SP',
  regiao: 'Sudeste',
  ddd: '11',
);

const dummyBody = GetCepDetailsByCepBody(cep: '03421030');
const dummyApiException = CepException('api error');

const dummyBodyDetailsListByLocalDetails = GetCepDetailsListByLocalDetailsBody(
  rua: 'rua',
  cidade: 'São Paulo',
  estado: 'SP',
);
