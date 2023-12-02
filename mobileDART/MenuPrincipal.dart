import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Principal'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.medical_services),
            title: Text('Receitas médicas e Controle de Receitas'),
            onTap: () {
              // Navegue para a tela de Receitas médicas e Controle de Receitas
            },
          ),
          ListTile(
            leading: Icon(Icons.article),
            title: Text('Atestados Médicos'),
            onTap: () {
              // Navegue para a tela de Atestados Médicos
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Cadastro de Pacientes e Médicos'),
            onTap: () {
              // Navegue para a tela de Cadastro de Pacientes e Médicos
            },
          ),
          ListTile(
            leading: Icon(Icons.schedule),
            title: Text('Agendamento de consultas'),
            onTap: () {
              // Navegue para a tela de Agendamento de consultas
            },
          ),
        ],
      ),
    );
  }
}