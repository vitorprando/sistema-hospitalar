import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Registro de Médicos'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
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
              items: <String>['Masculino', 'Feminino'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
              hint: Text('Sexo'),
            ),
          ],
        ),
      ),
    ),
  ));
}