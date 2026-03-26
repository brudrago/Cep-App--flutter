import 'package:cep_app/shared/data/async/either.dart';
import 'package:cep_app/shared/theme/data/dataSource/get_theme_local_data_source.dart';
import 'package:cep_app/shared/theme/data/dataSource/set_theme_data_source.dart';
import 'package:cep_app/shared/theme/domain/repositories/theme_repository.dart';
import 'package:cep_app/shared/theme/errors/theme_local_exception.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  final GetThemeLocalDataSource _getThemeLocalDataSource;
  final SetThemeLocalDataSource _setThemeLocalDataSource;

  ThemeRepositoryImpl({
    required GetThemeLocalDataSource getThemeLocalDataSource,
    required SetThemeLocalDataSource setThemeLocalDataSource,
  }) : _getThemeLocalDataSource = getThemeLocalDataSource,
       _setThemeLocalDataSource = setThemeLocalDataSource;

  @override
  Future<Either<ThemeException, bool>> getIsLightTheme() async {
    return _getThemeLocalDataSource.getIsLightTheme();
  }

  @override
  Future<Either<ThemeException, void>> setIsLightTheme(bool isLightTheme) async {
    return _setThemeLocalDataSource.setIsLightTheme(isLightTheme);
  }
}