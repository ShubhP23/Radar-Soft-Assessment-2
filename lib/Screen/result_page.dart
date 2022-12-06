import 'package:flutter/material.dart';
import 'package:radar_soft_assessment_2/Components/bottom_button.dart';
import 'package:radar_soft_assessment_2/Components/constant.dart';
import 'package:radar_soft_assessment_2/Components/reuseable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.calcResult,
    required this.name,
  });

  final String calcResult;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(
                15.0,
              ),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result!!',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '👋 Hello $name !!',
                    style: kBodyTextStyle,
                  ),
                  const Text(
                    'You will complete a Century in',
                    style: kResultTextStyle,
                  ),
                  Text(
                    calcResult.toUpperCase(),
                    style: kAgeTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onpress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
