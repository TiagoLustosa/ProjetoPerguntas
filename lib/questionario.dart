import 'package:flutter/material.dart';

import 'questao.dart';
import 'reposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quantoResponder;

  Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.quantoResponder,
  });
  bool get hasSelectedQuestion {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = hasSelectedQuestion
        ? perguntas[perguntaSelecionada]['respostas']
        : null;
    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto']),
        ...respostas
            .map((resp) => Resposta(
                  resp['texto'],
                  () => quantoResponder(resp['pontuacao']),
                ))
            .toList(),
      ],
    );
  }
}
