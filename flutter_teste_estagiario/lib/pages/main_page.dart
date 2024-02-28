import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('G A E F K E'), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          child: const Text('Não clique aqui!'),
          onPressed: (){},
        )
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.blue,
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wifi),
            label: 'API',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tab),
            label: 'form',
          ),
        ],
      )
    );
  }
}