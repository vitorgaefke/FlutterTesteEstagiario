import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            const snackBar = SnackBar(
              content: Text('Olá, Next Tecnologia!'),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('NEXT'),
        ),
      
        ),
    );
  }
}
