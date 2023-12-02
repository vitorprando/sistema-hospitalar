const fs = require('fs');
const express = require('express');
const server = express();

let usuarios = JSON.parse(fs.readFileSync('./dados/usuarios.json', 'utf8'));
let medicos = JSON.parse(fs.readFileSync('./dados/medicos.json', 'utf8'));
let pacientes = JSON.parse(fs.readFileSync('./dados/pacientes.json', 'utf8'));
let receitas = JSON.parse(fs.readFileSync('./dados/receitas.json', 'utf8'));

server.get('/', (req,res) => {
    return res.json({mensagem: 'API funcionando.'})
});

server.get('/usuarios', (req, res) => {
    return res.json(usuarios);
});

server.get('/medicos', (req, res) => {
    return res.json(medicos);
});

server.get('/pacientes', (req, res) => {
    return res.json(pacientes);
});

server.get('/receitas', (req, res) => {
    return res.json(receitas);
});

server.listen(3000, () => {
    console.log('Servidor funcionando.')
});