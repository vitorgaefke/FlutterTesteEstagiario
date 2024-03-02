import 'package:flutter/material.dart';

class PagForm extends StatefulWidget {
  const PagForm({super.key});

  @override
  State<PagForm> createState() => _PagFormState();
}

class _PagFormState extends State<PagForm> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Formulário'),
      ),
    );
  }
}