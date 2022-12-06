import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:sizer/sizer.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, this.icon, required this.label});

  final IconData? icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 2.h),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
