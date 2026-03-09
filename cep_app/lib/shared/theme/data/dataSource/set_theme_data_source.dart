import 'package:cep_app/shared/data/async/either.dart';
import 'package:cep_app/shared/data/local/local_service/local_service.dart';
import 'package:cep_app/shared/theme/data/dataSource/get_theme_local_data_source.dart';
import 'package:cep_app/shared/theme/errors/theme_local_exception.dart';

abstract interface class SetThemeLocalDataSource {
  Future<Either<ThemeException, void>> setIsLightTheme(bool isLightTheme);
}

final class SetThemeLocalDataSourceImpl implements SetThemeLocalDataSource {
  final LocalService _localService;

  SetThemeLocalDataSourceImpl({this._localService});

  @override
  Future<Either<ThemeException, void>> setIsLightTheme(bool isLightTheme) async {
    final result = await _localService.set(IS_LIGHT_THEME_KEY, isLightTheme);
    return switch (result) {
      Left(:final left) => Left(ThemeException(message: left.message)),
      Right() => Right(null),
    };
  }
}