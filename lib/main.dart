import 'package:flutter/material.dart';

import './screens/input_page_screen.dart';

void main() => runApp(BMICalculate());

class BMICalculate extends StatelessWidget {
  const BMICalculate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      home: InputPage(),
    );
  }
}

