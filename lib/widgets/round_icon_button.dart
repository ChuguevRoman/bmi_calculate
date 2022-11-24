import 'package:flutter/material.dart';

import '../constants.dart';

class RoundIconButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback onPress;

  const RoundIconButton({super.key, required this.icon, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
        fillColor: kRoundIconButtonColor,
        constraints: const BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        elevation: 6.0,
        onPressed: onPress,
      child: Icon(icon));
  }
}
