import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cep_app/shared/main/cep_app_config.dart';
import 'package:cep_app/shared/theme/cep_app_theme.dart';
import 'package:cep_app/shared/theme/providers/theme_notifier_provider.dart';
import 'package:cep_app/shared/features/cep/presentation/screens/cep_screen.dart';

class CepApp extends StatelessWidget {
  const CepApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Consumer(
        builder: (_, ref, __) {
          return MaterialApp(
            title: CepAppConfig.appName,
            theme: CepAppTheme.light,
            darkTheme: CepAppTheme.dark,
            themeMode: ref.watch(themeNotifierProvider).themeMode,
            home: const CepScreen(),
          );
        },
      ),
    );
  }
}