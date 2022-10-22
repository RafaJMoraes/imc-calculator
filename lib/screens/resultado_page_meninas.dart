import 'package:flutter/material.dart';
import '../componentes/reuso_card.dart';
import '../componentes/button.dart';
import '../constantes.dart';

class ResultsPageMeninas extends StatelessWidget {
  ResultsPageMeninas(
      {
        @required this.bmiResult,
        @required this.resultText});

  final String bmiResult;
  final String resultText;
  // final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULADORA'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          /* Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                '',
                style: kTitleTextStyle,
              ),
            ),
          ),*/
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  SizedBox(height: 50),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  /*Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),*/
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'Recalcular',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
