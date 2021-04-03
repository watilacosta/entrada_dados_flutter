import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double _valorEscolhido = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de Dados'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: Column(
          children: [
            Slider(
                value: 0,
                onChanged: (double valor) {
                  setState(() {
                    _valorEscolhido = valor;
                  });
                }
            )
          ],
        ),
      ),
    );
  }
}
