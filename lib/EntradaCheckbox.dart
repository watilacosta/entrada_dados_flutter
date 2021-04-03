import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

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

            CheckboxListTile(
              title: Text('Comida brasileira'),
              subtitle: Text('A melhor comida do Mundo'),
              activeColor: Colors.green,
              secondary: Icon(Icons.add_shopping_cart),
              value: _comidaBrasileira,
              onChanged: (bool value){
                setState(() {
                  _comidaBrasileira = value;
                });
              }
            ),
            CheckboxListTile(
                title: Text('Comida mexicana'),
                subtitle: Text('A segunda melhor comida do Mundo'),
                activeColor: Colors.green,
                secondary: Icon(Icons.add_shopping_cart),
                value: _comidaMexicana,
                onChanged: (bool value){
                  setState(() {
                    _comidaMexicana = value;
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
                print(
                  "Comida brasileira " + _comidaBrasileira.toString() +
                    " Comida mexicana " + _comidaMexicana.toString()
                );
              }
            )

            /*
            Text('Comida brasileira'),
            Checkbox(
              value: _IsChecked,
              onChanged: (bool valor){
                print("Checkbox:" + valor.toString());
                setState(() {
                  _IsChecked = valor;
                });
              },
            )*/

          ],
        ),
      ),
    );
  }
}
