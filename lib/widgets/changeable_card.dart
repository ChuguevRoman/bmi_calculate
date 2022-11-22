import 'package:flutter/material.dart';

import '../constants.dart';

class ChangeableCard extends StatelessWidget {

  const ChangeableCard({this.color = kActiveColor, this.cardChild});

  final Color color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      child: cardChild,
    );
  }
}
