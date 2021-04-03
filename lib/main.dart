import 'package:alcool_gasolina/CampoTexto.dart';
import 'package:alcool_gasolina/EntradaCheckbox.dart';
import 'package:alcool_gasolina/EntradaRadioButton.dart';
import 'package:alcool_gasolina/EntradaSlider.dart';
import 'package:alcool_gasolina/EntradaSwitch.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: EntradaSlider(),
      debugShowCheckedModeBanner: false,
    )
  );
}