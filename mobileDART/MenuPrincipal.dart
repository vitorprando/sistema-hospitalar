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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReceitasPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.article),
            title: Text('Atestados Médicos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AtestadosPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Cadastro de Pacientes e Médicos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CadastroPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.schedule),
            title: Text('Agendamento de consultas'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AgendamentoPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ReceitasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receitas médicas e Controle de Receitas'),
      ),
      body: Center(
        child: Text('Conteúdo da página de Receitas'),
      ),
    );
  }
}

class AtestadosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atestados Médicos'),
      ),
      body: Center(
        child: Text('Conteúdo da página de Atestados'),
      ),
    );
  }
}

class CadastroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Pacientes e Médicos'),
      ),
      body: Center(
        child: Text('Conteúdo da página de Cadastro'),
      ),
    );
  }
}

class AgendamentoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendamento de consultas'),
      ),
      body: Center(
        child: Text('Conteúdo da página de Agendamento'),
      ),
    );
  }
}