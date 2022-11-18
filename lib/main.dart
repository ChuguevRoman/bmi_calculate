import 'package:flutter/material.dart';

import './screens/input_page_screen.dart';
import './constants.dart';

void main() => runApp(BMICalculate());

class BMICalculate extends StatelessWidget {
  const BMICalculate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: kMainColor,
        scaffoldBackgroundColor: kMainColor,
        appBarTheme: const AppBarTheme().copyWith(
          color: kMainColor,
        ),
      ),
      home: InputPage(),
    );
  }
}

