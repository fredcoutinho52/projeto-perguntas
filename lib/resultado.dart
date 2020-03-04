import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if(pontuacao < 8) {
      return 'Parabéns!';
    } else if(pontuacao < 12) {
      return 'Você é bom!';
    } else if(pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(
              fontSize: 30, 
              color: Colors.blue
            ),
          ),
        ),
        RaisedButton(
          child: Text(
            'Reiniciar',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          color: Colors.blue,
          textColor: Colors.blue,
          onPressed: quandoReiniciarQuestionario,
        ),
      ],
    );
  }
}