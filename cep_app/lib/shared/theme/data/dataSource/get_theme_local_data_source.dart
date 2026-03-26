import 'package:cep_app/shared/data/async/either.dart';
import 'package:cep_app/shared/data/local/local_service/local_service.dart';
import 'package:cep_app/shared/domain/providers/local_provider.dart';
import 'package:cep_app/shared/theme/errors/theme_local_exception.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract interface class GetThemeLocalDataSource {
  Future<Either<ThemeException, bool>> getIsLightTheme();
}

const String IS_LIGHT_THEME_KEY = 'IS_LIGHT_THEME_KEY';

final class GetThemeLocalDataSourceImpl implements GetThemeLocalDataSource {
  final LocalService _localService;

  GetThemeLocalDataSourceImpl({required LocalService localService}) : _localService = localService;

  @override
  Future<Either<ThemeException, bool>> getIsLightTheme() async {
    final result = await _localService.get<bool>(IS_LIGHT_THEME_KEY);
    return switch (result) {
      Left(:final left) => Left(ThemeException(message: left.message)),
      Right(:final right) => Right(right ?? true),
    };
  }
}

final getThemeLocalDataSourceProvider = Provider<GetThemeLocalDataSource>(
  (ref) => GetThemeLocalDataSourceImpl(localService: ref.read(localServiceProvider)),
);