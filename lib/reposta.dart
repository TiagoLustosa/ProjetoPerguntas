import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final void Function() whenSelected;

  Resposta(this.resposta, this.whenSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
          ),
          onPressed: whenSelected,
          child: Text(
            resposta,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
