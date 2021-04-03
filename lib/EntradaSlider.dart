import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double _valorEscolhido = 0;
  String _label = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de Dados'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            Slider(
                label: _label,
                divisions: 5,
                value: _valorEscolhido,
                activeColor: Colors.purple,
                min: 0,
                max: 10,
                onChanged: (double valor) {
                  setState(() {
                    _valorEscolhido = valor;
                    _label = valor.toString();
                  });
                }
            ),
            RaisedButton(
                child: Text('Salvar',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white70
                  ),
                ),
                color: Colors.purple,
                padding: EdgeInsets.all(10),
                onPressed: (){
                  print(_valorEscolhido.toInt());
                }
            )
          ],
        ),
      ),
    );
  }
}
