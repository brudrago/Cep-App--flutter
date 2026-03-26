import 'package:cep_app/shared/theme/data/dataSource/get_theme_local_data_source.dart';
import 'package:cep_app/shared/theme/data/dataSource/set_theme_data_source.dart';
import 'package:cep_app/shared/theme/data/repositories/theme_repository_impl.dart';
import 'package:cep_app/shared/theme/providers/theme_notifier.dart';
import 'package:cep_app/shared/theme/providers/theme_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, ThemeState>((ref) {
  return ThemeNotifier(
    themeRepository: ThemeRepositoryImpl(
      getThemeLocalDataSource: ref.read(getThemeLocalDataSourceProvider),
      setThemeLocalDataSource: ref.read(setThemeLocalDataSourceProvider),
    ),
  );
});