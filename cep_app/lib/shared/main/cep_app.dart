import 'package:flutter/material.dart';

class CepApp extends StatelessWidget {
  const CepApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: CepAppConfig.appName,
      theme: CepAppTheme.light,
      darkTheme: CepAppTheme.dark,
      themeMode: ThemeMode.system,
      home: Container()),
    );
  }
}