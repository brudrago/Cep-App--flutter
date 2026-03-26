import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cep_app/shared/theme/providers/theme_notifier_provider.dart';

class CepScreen extends ConsumerStatefulWidget {
  const CepScreen({super.key});

  @override
  ConsumerState<CepScreen> createState() => _CepScreenState();
}

class _CepScreenState extends ConsumerState<CepScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(themeNotifierProvider.notifier).initThemeState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CEP'),
      ),
      body: const Center(
        child: Text('CEP'),
      ),
    );
  }
}