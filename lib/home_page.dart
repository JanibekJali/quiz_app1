import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app1/quiz_brain.dart';

import 'joop_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool suurooButtubu = false;
  int esepte() {
    var a = 7;
    int b = 3;
    int c = 2;
    return a + b * c;
  }

  List<Widget> icons = [];

  void userChoice(bool userdinjoobu) {
    final bizdinJoop = quizBrain.jooptuAlipKel();
    if (bizdinJoop == userdinjoobu) {
      icons.add(
        const Icon(
          Icons.check,
          color: Colors.green,
          size: 50,
        ),
      );
    } else if (bizdinJoop != userdinjoobu) {
      icons.add(
        const Icon(
          Icons.close,
          color: Colors.red,
          size: 50,
        ),
      );
    }
    quizBrain.otkoz();
    if (quizBrain.suroonuAlipKel() == 'Suroolor buttu!') {
      suurooButtubu = true;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Tapshyrma 7',
          style: TextStyle(fontSize: 23),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            esepte().toString(),
            style: TextStyle(
              color: Colors.green,
              fontSize: 32,
            ),
          ),
          suurooButtubu == true
              ? ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    quizBrain.suroonuAlipKel();
                    quizBrain.restart();
                    suurooButtubu = false;

                    icons = [];
                    log('ishtep atat');
                  },
                  child: const Text(
                    'Bashynan Bashta',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 32,
                    ),
                  ),
                )
              : Center(
                  child: Text(
                    quizBrain.suroonuAlipKel(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(211, 211, 211, 1), fontSize: 32),
                  ),
                ),
          SizedBox(
            height: 30,
          ),
          JoopWidget(
            text: 'true',
            onTap: () {
              userChoice(true);
            },
          ),
          SizedBox(
            height: 20,
          ),
          JoopWidget(
            text: 'false',
            tus: Colors.red,
            onTap: () {
              userChoice(false);
            },
          ),
          Row(children: icons),
        ],
      ),
    );
  }
}
