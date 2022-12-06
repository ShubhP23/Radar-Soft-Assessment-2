import 'package:flutter/material.dart';
import 'constant.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key, required this.onpress, required this.buttonTitle});

  final Function() onpress;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        color: kBottomContainerColour,
        height: kBottomBarHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonTitle,
            style: kBottomButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
