import 'package:cep_app/shared/data/async/either.dart';
import 'package:cep_app/shared/domain/repositories/cep_repository.dart';
import 'package:cep_app/shared/domain/use_cases/get_cep_details_list_by_local_details.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../../../fixtures/fixture.dart';
import '../../../../fixtures/mock_cep_repository.dart';

void main() {
  late CepRepository cepRepository;
  late GetCepDetailsListByLocalDetails getCepDetailsListByLocalDetails;

  setUp(() {
    cepRepository = MockCepRepository();
    getCepDetailsListByLocalDetails = GetCepDetailsListByLocalDetails(
      cepRepository,
    );
    registerFallbackValue(dummyBodyDetailsListByLocalDetails);
  });

  group('get cep details list by local details', () {
    test('success', () async {
      when(
        () => cepRepository.getCepDetailsListByLocalDetails(any()),
      ).thenAnswer((_) async => Right([dummyCep]));

      final listCepResponse = await getCepDetailsListByLocalDetails.call(
        dummyBodyDetailsListByLocalDetails,
      );
      expect(listCepResponse, isA<Right>());
    });

    test('failure', () async {
      when(
        () => cepRepository.getCepDetailsListByLocalDetails(any()),
      ).thenAnswer((_) async => Left(dummyApiException));

      final listCepResponse = await getCepDetailsListByLocalDetails.call(
        dummyBodyDetailsListByLocalDetails,
      );
      expect(listCepResponse, isA<Left>());
    });
  });
}
