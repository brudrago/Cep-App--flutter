import 'package:cep_app/shared/data/async/either.dart';
import 'package:cep_app/shared/theme/errors/theme_local_exception.dart';

abstract interface class ThemeRepository {
  Future<Either<ThemeException, bool>> getIsLightTheme();
  Future<Either<ThemeException, void>> setIsLightTheme(bool isLightTheme);
}