import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;

  const BottomButton({super.key, required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.only(bottom: 15),
        alignment: Alignment.center,
        width: double.infinity,
        height: kHeightBottomButton,
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomButtonColor,
        child: Text(
          text,
          style: kLargeButtonTextStyle,
        ),
      ),
    );
  }
}
