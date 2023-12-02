import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Registro de Pacientes'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Text('Informações Pessoais', style: TextStyle(fontSize: 20)),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Sobrenome',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Idade',
              ),
              keyboardType: TextInputType.number,
            ),
            DropdownButton<String>(
              items: <String>['Masculino', 'Feminino', 'Outro'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
              hint: Text('Sexo'),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Endereço',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Telefone',
              ),
              keyboardType: TextInputType.phone,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            Text('Histórico Médico', style: TextStyle(fontSize: 20)),
            TextField(
              decoration: InputDecoration(
                labelText: 'Diagnostico',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Medicamento',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Alergia',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Cirurgia',
              ),
            ),
            Text('Contato de Emergência', style: TextStyle(fontSize: 20)),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Telefone',
              ),
              keyboardType: TextInputType.phone,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Relação',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    ),
  ));
}