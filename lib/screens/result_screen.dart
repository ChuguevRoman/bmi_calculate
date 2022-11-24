import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/changeable_card.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ChangeableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Normal', style: kResultTextStyle,),
                    Text('29.9', style: kBMITextStyle,),
                    Text('Normal fhjg sgae wgerg wgwreg qegq qfeq3gf qe4fq43 q3f', style: kBodyTextStyle, textAlign: TextAlign.center,),
                  ],
            ),
          )),
        ],
      ),
    );
  }
}
