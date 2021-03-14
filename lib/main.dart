import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.purple[100],
          appBar: AppBar(
              title: Text('Dados de la Suerte'),
              backgroundColor: Colors.greenAccent[400]),
          body: DadosAleatorio()),
    ),
  );
}

class DadosAleatorio extends StatefulWidget {
  @override
  _DadosAleatorioState createState() => _DadosAleatorioState();
}

class _DadosAleatorioState extends State<DadosAleatorio> {
  int numeroDado = Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset('assets/images/dice$numeroDado.png'),
        FloatingActionButton(
          onPressed: () => cambiarDado(),
          child: Text(
            '??',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          backgroundColor: color(numeroDado),
        ),
      ],
    );
  }

  cambiarDado() {
    numeroDado = (Random().nextInt(6) + 1);
    setState(() {});
  }

  color(int numeroDado) {
    if (numeroDado == 1)
      return Colors.amber[100];
    else if (numeroDado == 2)
      return Colors.green[200];
    else if (numeroDado == 3)
      return Colors.lightBlue[100];
    else if (numeroDado == 4)
      return Colors.grey[400];
    else if (numeroDado == 5)
      return Colors.orange[400];
    else
      return Colors.indigo[300];
    setState(() {});
  }
}
