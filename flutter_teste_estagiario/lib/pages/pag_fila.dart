import 'package:flutter/material.dart';

class PagFila extends StatefulWidget {
  const PagFila({super.key});

  @override
  State<PagFila> createState() => _PagFilaState();
}

class _PagFilaState extends State<PagFila> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 80,
              child: IconButton(
                icon: const Icon(Icons.person, color: Colors.blue, size: 50),
                onPressed:() => showDialog(context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Ícone selecionado:'),
                  content: const Icon(Icons.person, size: 50, color: Colors.blue),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Fechar'),
                    ),
                  ],
                ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: IconButton(
                icon: const Icon(Icons.radio, color: Colors.blue, size: 50),
                onPressed:() => showDialog(context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Ícone selecionado:'),
                  content: const Icon(Icons.radio, size: 50, color: Colors.blue),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Fechar'),
                    ),
                  ],
                ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: IconButton(
                icon: const Icon(Icons.music_note, color: Colors.blue, size: 50),
                onPressed:() => showDialog(context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Ícone selecionado:'),
                  content: const Icon(Icons.music_note, size: 50, color: Colors.blue),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Fechar'),
                    ),
                  ],
                ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: IconButton(
                icon: const Icon(Icons.gamepad, color: Colors.blue, size: 50),
                onPressed:() => showDialog(context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Ícone selecionado:'),
                  content: const Icon(Icons.gamepad, size: 50, color: Colors.blue),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Fechar'),
                    ),
                  ],
                ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: IconButton(
                icon: const Icon(Icons.flutter_dash, color: Colors.blue, size: 50),
                onPressed:() => showDialog(context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Ícone selecionado:'),
                  content: const Icon(Icons.flutter_dash, size: 50, color: Colors.blue),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Fechar'),
                    ),
                  ],
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}