import 'package:flutter/material.dart';
import 'package:horoscopo_app/pages/signos/detalhes_signo.dart';

class ListSignos extends StatelessWidget {
  String? _imagem;
  Map? _dataSigno;

  ListSignos(Map signo, {super.key}) {
    _imagem = signo['Imagem'];
    _dataSigno = signo;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        child: GestureDetector(
          child: Image.asset(
            _imagem!,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetalhesSigno(_dataSigno!),
              ),
            );
          },
        ),
      ),
    );
  }
}
