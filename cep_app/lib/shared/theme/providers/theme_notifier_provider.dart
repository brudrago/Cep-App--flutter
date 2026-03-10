import 'package:cep_app/shared/theme/providers/theme_notifier.dart';
import 'package:cep_app/shared/theme/providers/theme_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, ThemeState>((ref) {
  return ThemeNotifier(ThemeRepositoryImpl(getThemeLocalDataSource: ref.read(getThemeLocalDataSourceProvider), setThemeLocalDataSource: ref.read(setThemeLocalDataSourceProvider)));
}); 