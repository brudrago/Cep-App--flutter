import 'package:cep_app/shared/data/async/either.dart';
import 'package:cep_app/shared/data/local/local_service/errors/local_exception.dart';
import 'package:cep_app/shared/data/local/local_service/local_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class SharedPreferencesService implements LocalService {
  final SharedPreferences sharedPreferences;

  SharedPreferencesService({required this.sharedPreferences});

  @override
  Future<Either<LocalException, T?>> get<T>(String key) async {
    try {
        if (T == String) {
          return Right(sharedPreferences.getString(key));
        } else if (T == bool) {
          return Right(sharedPreferences.getBool(key));
        }
        return Right(null);
    } catch (error, stackTrace) {
        const identifier = 'Error getting value from SharedPreferences';
        log(identifier, error: error, stackTrace: stackTrace);
        return Left(LocalException(message: error.toString()));
    }
}

  @override
  Future<Either<LocalException, void>> set<T>(String key, T value) async {
    try {
      if (T == String) {
        await sharedPreferences.setString(key, value);
      } else if (T == bool) {
        await sharedPreferences.setBool(key, value);
      }
      return Right(null);
    }
    catch (error, stackTrace) {
      const identifier = 'Error setting value in SharedPreferences';
      log(identifier, error: error, stackTrace: stackTrace);
      return Left(LocalException(message: error.toString()));
    }
  }

  }