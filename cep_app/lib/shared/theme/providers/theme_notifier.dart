import 'package:cep_app/shared/theme/domain/repositories/theme_repository.dart';
import 'package:cep_app/shared/theme/providers/theme_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeNotifier extends StateNotifier<ThemeState> {
  final ThemeRepository _themeRepository;

  ThemeNotifier({required ThemeRepository themeRepository}) : _themeRepository = themeRepository, super(const ThemeState());

  Future<void> initThemeState() async {
    final result = await _themeRepository.getIsLightThemesLightTheme();
    String errorMessage = '';
    switch (result) {
      case Left(:final left):
        errorMessage = left.message;
        break;
      case Right(:final right):
        state = state.copyWith(themeState: right ? ThemeStateEnum.light : ThemeStateEnum.dark);
        break;
    }
    if (errorMessage.isNotEmpty) {
      throw ThemeException(message: errorMessage);
    }
  }

  void toggleTheme() {
    state = state.copyWith(themeState: state.themeState == ThemeStateEnum.light ? ThemeStateEnum.dark : ThemeStateEnum.light);
  }
}