import 'package:flutter/material.dart';
import 'package:flutter_teste_estagiario/pages/fila_page.dart';
import 'package:flutter_teste_estagiario/pages/home_page.dart';
import 'package:flutter_teste_estagiario/pages/pag_api.dart';
import 'package:flutter_teste_estagiario/pages/pag_form.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: '2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.api),
            label: '3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '4',
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: const Text('G A E F K E'), centerTitle: true),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          HomePage(),
          PagForm(),
          PagLista(),
          PagApi(),
        ],
    ),);
  }
}