import 'package:cep_app/shared/data/async/either.dart';
import 'package:cep_app/shared/data/remote/cep_base_repository.dart';
import 'package:cep_app/shared/domain/entities/get_cep_details_by_cep_body.dart';
import 'package:cep_app/shared/domain/repositories/cep_repository.dart';
import 'package:cep_app/shared/domain/use_cases/get_cep_details_by_cep.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fixtures/fixture.dart';

class MockCepRepository extends Mock implements CepRepository {}

void main () {
  late CepRepository cepRepository;
  late GetCepDetailsByCep getCepDetailsByCep;

  setUp(() {
    cepRepository = MockCepRepository();
    getCepDetailsByCep = GetCepDetailsByCep(cepRepository);
    registerFallbackValue(dummyBody);
  });

  group('Get cep details by cep', () {
    test('success', () async {
      when(() => cepRepository.getCepDetailByCep(any())).thenAnswer((_) async => Right(dummyCep));

     final cepResponse = await getCepDetailsByCep.call(dummyBody);
     expect(cepResponse, isA<Right>());
    });
  });
}