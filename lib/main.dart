import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Léo', 'Pedro'],
    },
  ];

  void _responder() {
    if(hasPerguntaSelecionada) {
      // método que verifica mudança e altera o estado
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get hasPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: hasPerguntaSelecionada 
        ? Questionario(perguntas: _perguntas, perguntaSelecionada: _perguntaSelecionada, responder: _responder)
        : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}