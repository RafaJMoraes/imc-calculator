import 'package:flutter/material.dart';
import 'dart:math';

class CalculadoraFeminina {
  CalculadoraFeminina({
      @required this.altura,
  @required this.idade,
  @required this.cirPes});

  double a =  131.63091;
  double b =  0.00209;
  double c = 37.57813;
  double d = 3.71482;

  final int altura;
  final int idade;
  final double cirPes;

  double _bmiFem;


  String calculateMeninas() {
    _bmiFem = - a +( b * idade) +
        (c * altura/100) +
        (d * cirPes);

    return _bmiFem.toStringAsFixed(2);

  }

  String getResusltMeninas(){
    return "Peso Estimado Meninas";
  }
}