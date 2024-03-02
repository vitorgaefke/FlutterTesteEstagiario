import 'package:flutter/material.dart';

class PagLista extends StatefulWidget {
  const PagLista({super.key});

  @override
  State<PagLista> createState() => _PagListaState();
}

class _PagListaState extends State<PagLista> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Lista'),
      ),
    );
  }
}