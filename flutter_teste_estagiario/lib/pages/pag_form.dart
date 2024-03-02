import 'dart:html';

import 'package:flutter/material.dart';

class PagForm extends StatefulWidget {
  const PagForm({super.key});

  @override
  State<PagForm> createState() => _PagFormState();
}

class _PagFormState extends State<PagForm> {
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
                icon: Icon(Icons.person, color: Colors.blue, size: 50),
                onPressed:() => showDialog(context: context,
                builder: (context) => AlertDialog(
                  title: Text('Ícone selecionado:'),
                  content: Icon(Icons.person, size: 50, color: Colors.blue),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Fechar'),
                    ),
                  ],
                ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: IconButton(
                icon: Icon(Icons.radio, color: Colors.blue, size: 50),
                onPressed:() => showDialog(context: context,
                builder: (context) => AlertDialog(
                  title: Text('Ícone selecionado:'),
                  content: Icon(Icons.radio, size: 50, color: Colors.blue),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Fechar'),
                    ),
                  ],
                ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: IconButton(
                icon: Icon(Icons.music_note, color: Colors.blue, size: 50),
                onPressed:() => showDialog(context: context,
                builder: (context) => AlertDialog(
                  title: Text('Ícone selecionado:'),
                  content: Icon(Icons.music_note, size: 50, color: Colors.blue),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Fechar'),
                    ),
                  ],
                ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: IconButton(
                icon: Icon(Icons.gamepad, color: Colors.blue, size: 50),
                onPressed:() => showDialog(context: context,
                builder: (context) => AlertDialog(
                  title: Text('Ícone selecionado:'),
                  content: Icon(Icons.gamepad, size: 50, color: Colors.blue),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Fechar'),
                    ),
                  ],
                ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: IconButton(
                icon: Icon(Icons.flutter_dash, color: Colors.blue, size: 50),
                onPressed:() => showDialog(context: context,
                builder: (context) => AlertDialog(
                  title: Text('Ícone selecionado:'),
                  content: Icon(Icons.flutter_dash, size: 50, color: Colors.blue),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Fechar'),
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