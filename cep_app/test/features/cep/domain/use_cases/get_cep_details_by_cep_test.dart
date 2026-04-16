import 'package:cep_app/shared/data/remote/cep_base_repository.dart';
import 'package:cep_app/shared/domain/use_cases/get_cep_details_by_cep.dart';
import 'package:flutter_test/flutter_test.dart';

void main () {
  late CepRepository cepRepository;
  late GetCepDetailsByCep getCepDetailsByCep;

  setUp(() {
    cepRepository = CepRepository();
    getCepDetailsByCep = GetCepDetailsByCep(cepRepository);
  });

  group('Get cep details by cep', () {
    test('success', () async {
     final cep = "03421030";
     const body = GetCepDetailsByCepBody(cep);
     final cepResponse = await getCepDetailsByCep.call(body);

    });
  });
}