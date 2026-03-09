abstract interface class GetThemeLocalDataSource {
  Future<Either<ThemeException, bool>> getIsLightTheme();
}

const String IS_LIGHT_THEME_KEY = 'IS_LIGHT_THEME_KEY';

final class GetThemeLocalDataSourceImpl implements GetThemeLocalDataSource {
  final LocalService _localService;

  GetThemeLocalDataSourceImpl({this._localService});

  @override
  Future<Either<ThemeException, bool>> getIsLightTheme() async {
    final result = await _localService.get<bool>(IS_LIGHT_THEME_KEY);
    return result.fold(
      (l) => Left(ThemeException(message: l.message)),
      (r) => Right(r ?? true),
    );
  }
}