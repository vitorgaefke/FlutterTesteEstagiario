import 'package:flutter/material.dart';

class PagApi extends StatefulWidget {
  const PagApi({super.key});

  @override
  State<PagApi> createState() => _PagApiState();
}

class _PagApiState extends State<PagApi> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('API'),
      ),
    );
  }
}