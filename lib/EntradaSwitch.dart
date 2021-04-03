import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario = false;

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
            SwitchListTile(
                title: Text('Receber Notificações!',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple
                  ),
                ),
                activeColor: Colors.purple,
                value: _escolhaUsuario,
                onChanged: (bool opcaoEscolhida){
                  setState(() {
                    _escolhaUsuario = opcaoEscolhida;
                    print(_escolhaUsuario);
                  });
                }
            ),

           // Switch(
           //   activeColor: Colors.purple,
           //     value: _escolhaUsuario,
           //     onChanged: (bool opcaoEscolhida){
           //       setState(() {
           //         _escolhaUsuario = opcaoEscolhida;
           //         print(_escolhaUsuario);
           //       });
           //     }
           // ),
           //  Text('Receber notificações?',
           //    style: TextStyle(
           //      fontSize: 25,
           //      fontWeight: FontWeight.bold,
           //      color: Colors.purple
           //    ),
           //  )
          ],
        ),
      ),
    );
  }
}
