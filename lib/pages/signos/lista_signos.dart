import 'package:flutter/material.dart';
import 'package:horoscopo_app/utils/card_signo.dart';

import '../../data/dados_signos.dart' as colecao_signos;

class ListaSignos extends StatelessWidget {
  var signos = colecao_signos.signos;

  ListaSignos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Caracterí­sticas dos Signos"),
        centerTitle: true,
      ),
      body: GridView.count(
        padding: const EdgeInsets.only(top: 20),
        crossAxisCount: 2,
        children: List.generate(
            signos.length, (index) => CardSigno(signos[index] as Map)),
      ),
    );
  }
}
