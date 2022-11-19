import 'package:flutter/material.dart';

import '../constants.dart';

class ChangeableCard extends StatelessWidget {

  const ChangeableCard({this.color = kActiveColor});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
    );
  }
}
