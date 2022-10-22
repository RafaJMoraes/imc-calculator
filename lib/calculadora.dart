import 'dart:math';

import 'package:flutter/cupertino.dart';

class Calculadora {

  Calculadora({
    @required this.altura,
    @required this.cirPescoco,
    @required this.idade});

  double a = 15.2854;
  double b = 0.00414;
  double c = 14.30315;
  double d = 0.04888;

  final int altura;
  final int idade;
  final double cirPescoco;
  double _bmi;


  String calculateBMI() {
    _bmi = - a -( b * idade) +
        (c * (pow(altura /100 , 2))) +
        (d * (pow(cirPescoco , 2)));

    return _bmi.toStringAsFixed(2);

  }

  String getResult() {
    return "Peso Estimado Meninos";
  }

  /*String getInterpretation() {

  }*/
   /* if (_bmi >= 25) {
      return 'Você tem um peso corporal maior do que o normal. Tente se exercitar mais.';
    } else if (_bmi >= 18.5) {
      return "Você tem um peso corporal normal. Bom trabalho!";
    } else {
      return 'Você tem um peso corporal inferior ao normal. Você pode comer um pouco mais.';
    }
  }*/
}
