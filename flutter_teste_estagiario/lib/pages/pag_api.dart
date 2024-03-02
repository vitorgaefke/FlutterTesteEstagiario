import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_teste_estagiario/pages/users.dart';
import 'package:http/http.dart' as http;

class PagApi extends StatefulWidget {
  const PagApi({super.key});

  @override
  State<PagApi> createState() => _PagApiState();
}

class _PagApiState extends State<PagApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<dynamic>(
        future: buscarUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var user = snapshot.data![index];
                return ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UserPage(user: user)));
                  },
                  title: Text(user['name']),
                  subtitle: Text(user['email']),
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Center(child: Text('Erro ao carregar os usuários'));
          }
          return const Center(child: CircularProgressIndicator());
        }
        ), 
    );
  }

  buscarUsers() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Falha ao carregar os usuários');
    }
  }
}