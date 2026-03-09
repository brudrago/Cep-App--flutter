import 'package:cep_app/shared/data/async/either.dart';
import 'package:cep_app/shared/data/local/local_service/local_service.dart';
import 'package:cep_app/shared/theme/errors/theme_local_exception.dart';

abstract interface class SetThemeLocalDataSource {
  Future<Either<ThemeException, void>> setIsLightTheme(bool isLightTheme);
}

final class SetThemeLocalDataSourceImpl implements SetThemeLocalDataSource {
  final LocalService _localService;

  SetThemeLocalDataSourceImpl({this.localService});

  @override
  Future<Either<ThemeException, void>> setIsLightTheme(bool isLightTheme) async {
    return localService.set<bool>(key: IS_LIGHT_THEME_KEY, value: isLightTheme);
  }
}