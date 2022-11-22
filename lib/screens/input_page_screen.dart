import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '/constants.dart';
import '../widgets/icon_content.dart';
import '../widgets/changeable_card.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

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
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ChangeableCard(
                      color: selectedGender == Gender.male
                          ? kActiveColor
                          : kInActiveColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ChangeableCard(
                      color: selectedGender == Gender.female
                          ? kActiveColor
                          : kInActiveColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'Female',
                      ),
                    ),
                  ),
                ),
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
