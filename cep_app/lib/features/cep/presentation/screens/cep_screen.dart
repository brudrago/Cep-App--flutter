import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CepScreen extends ConsumerStatefulWidget {
  const CepScreen({super.key});

  @override
  State<CepScreen> createState() => _CepScreenState();
}

class _CepScreenState extends ConsumerState<CepScreen> {
@override
void initState() {
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('CEP')),
    );
  }
}