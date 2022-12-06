import 'package:flutter/material.dart';

class RoundIcon extends StatelessWidget {
  const RoundIcon({
    super.key,
    required this.onpress,
    required this.icon,
  });

  final Function() onpress;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(
        icon,
        color: const Color(0xFFEB5555),
      ),
    );
  }
}
