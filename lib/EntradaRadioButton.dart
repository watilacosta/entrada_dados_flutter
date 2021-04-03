import 'package:flutter/material.dart';

class EntradaRadionButton extends StatefulWidget {
  @override
  _EntradaRadionButtonState createState() => _EntradaRadionButtonState();
}

class _EntradaRadionButtonState extends State<EntradaRadionButton> {
  String _escolhaUsuario;

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
            RadioListTile(
              title: Text('Masculino'),
              value: 'm',
              groupValue: _escolhaUsuario,
              onChanged: (String escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
              }
            ),
            RadioListTile(
                title: Text('Feminino'),
                value: 'f',
                groupValue: _escolhaUsuario,
                onChanged: (String escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
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
                  if(_escolhaUsuario != null) {
                    print('Resultado: ' + _escolhaUsuario);
                  } else {
                    print('Escolha um item');
                  }
                }
            )

            /*Text('Masculino'),
            Radio(
                value: 'm',
                groupValue: _escolhaUsuario,
                onChanged: (String escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                    print('Escolha: ' + escolha);
                  });
                }
            ),
            Text('Feminino'),
            Radio(
                value: 'f',
                groupValue: _escolhaUsuario,
                onChanged: (String escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                    print('Escolha: ' + escolha);
                  });
                }
            ) */
          ],
        ),
      ),
    );
  }
}
