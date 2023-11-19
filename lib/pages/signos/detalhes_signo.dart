import 'package:flutter/material.dart';

class DetalhesSigno extends StatelessWidget {
  String? _nome;
  String? _dataInicio;
  String? _dataFim;
  String? _imagem;
  String? _descricao;

  DetalhesSigno(Map signo, {super.key}) {
    _nome = signo['Nome'];
    _imagem = signo['Imagem'];
    _dataInicio = signo['DataInicio'];
    _dataFim = signo['DataFim'];
    _descricao = signo['Descricao'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signo: $_nome"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(_imagem!, width: 200),
              const SizedBox(height: 30),
              Text(_nome!,
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              const SizedBox(height: 15),
              Text("$_dataInicio - $_dataFim",
                  style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 30),
              const Text('Características: ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text(_descricao!,
                  style: const TextStyle(color: Colors.black, fontSize: 16))
            ],
          ),
        ),
      ),
    );
  }
}
