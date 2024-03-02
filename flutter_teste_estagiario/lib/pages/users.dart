import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {

  Map<String, dynamic> user;
  UserPage({Key? key, required this.user}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user['name']),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(user['name'], textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text(user['email'], textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
              Text(user['phone'], textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}