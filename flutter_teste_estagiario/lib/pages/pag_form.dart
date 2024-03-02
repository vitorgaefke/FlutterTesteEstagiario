import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class PagForm extends StatefulWidget {
  const PagForm({super.key});

  @override
  State<PagForm> createState() => _PagFormState();
}

class _PagFormState extends State<PagForm> {

  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _controllerNome,
              decoration: const InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
              validator: (valueNome) {
                if (valueNome == null || valueNome.isEmpty) {
                  return 'Você precisa digitar um nome!';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _controllerEmail,
              decoration: const InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
              validator: (valueEmail) {
                if (valueEmail == null || valueEmail.isEmpty) {
                  return 'Você precisa digitar um e-mail!';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _controllerSenha,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
              ),
              validator: (valueSenha) {
                if (valueSenha == null || valueSenha.isEmpty) {
                  return 'Você precisa digitar uma senha!';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                var nome = _controllerNome.text;
                var email = _controllerEmail.text;
                var senha = _controllerSenha.text;

                if (_formKey.currentState!.validate()) {
                  print(nome);
                  print(email);
                  print(senha);
              }
              },
              child: const Text('Olhe o console!'),
            ),],
        ),
      ),
    );
  }
}