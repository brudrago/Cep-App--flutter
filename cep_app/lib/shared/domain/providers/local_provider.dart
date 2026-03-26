import 'package:cep_app/shared/data/local/local_service/shared_preferences.dart';
import 'package:cep_app/shared/data/local/local_service/local_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final localServiceProvider = Provider<LocalService>(
    (ref) => SharedPreferencesService(sharedPreferences: SharedPreferences.getInstance())
    );
