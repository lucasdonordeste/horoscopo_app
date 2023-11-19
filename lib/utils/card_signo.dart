import 'package:flutter/material.dart';
import 'package:horoscopo_app/pages/signos/detalhes_signo.dart';

class CardSigno extends StatelessWidget {
  String? _nome;
  String? _imagem;
  Map? _dataSigno;

  CardSigno(Map signo, {super.key}) {
    _nome = signo['Nome'];
    _imagem = signo['Imagem'];
    _dataSigno = signo;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding:
              const EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
        ),
        child: Column(
          children: [
            Image.asset(_imagem!, width: 90),
            const SizedBox(height: 10),
            Text(_nome!,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            const SizedBox(height: 10),
          ],
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetalhesSigno(_dataSigno!)));
        },
      ),
    );
  }
}
