import 'package:bmi_calculate_git/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/changeable_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(child: ChangeableCard()),
                Expanded(child: ChangeableCard()),
              ],
            ),
          ),
          Expanded(child: ChangeableCard()),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ChangeableCard()),
                Expanded(child: ChangeableCard()),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: kHeightBottomButton,
            margin: EdgeInsets.only(top: 10.0),
            color: kBottomButtonColor,

          ),
        ],
      ),
    );
  }
}
