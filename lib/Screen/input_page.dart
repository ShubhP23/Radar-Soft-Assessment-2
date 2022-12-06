import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:radar_soft_assessment_2/Components/bottom_button.dart';
import 'package:radar_soft_assessment_2/Components/constant.dart';
import 'package:radar_soft_assessment_2/Components/icon_content.dart';
import 'package:radar_soft_assessment_2/Components/reuseable_card.dart';
import 'package:radar_soft_assessment_2/Screen/result_page.dart';
import 'package:radar_soft_assessment_2/calc_brain.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(
                        () {
                          selectedGender = Gender.male;
                        },
                      );
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Enter Name',
                    style: kLabelTextStyle,
                  ),
                  SizedBox(
                    width: 250,
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                      controller: nameController,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text(
                      'Enter Age',
                      style: kLabelTextStyle,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: kAgeTextStyle.copyWith(fontSize: 25),
                      keyboardType: TextInputType.number,
                      controller: ageController,
                    ),
                  ),
                ],
              ),
              colour: kActiveCardColour,
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onpress: () {
              CalcBrain calcBrain =
                  CalcBrain(age: int.parse(ageController.text));
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    calcResult: calcBrain.calculateAge(),
                    name: nameController.text,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
