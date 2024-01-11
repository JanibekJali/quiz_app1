import 'dart:developer';

import 'package:quiz_app1/quiz_model.dart';

final QuizBrain quizBrain = QuizBrain();

class QuizBrain {
  int index = 0;

  List<QuizModel> suroolorJooptor = [
    QuizModel(suroo: 'Kyrgyzstanda 7 oblast barby?', joop: true),
    QuizModel(suroo: 'Kyrgyzstanda Okean barby?', joop: false),
    QuizModel(suroo: 'Kyrgyzstanda metro barby?', joop: false),
    QuizModel(suroo: 'Kyrgyzstanda wildberies barby?', joop: true),
  ];
  String suroonuAlipKel() {
    if (index < suroolorJooptor.length) {
      return suroolorJooptor[index].suroo!;
    } else {
      return 'Suroolor buttu!';
    }
  }

  jooptuAlipKel() {
    if (index < suroolorJooptor.length) {
      log('suroo joop: ${suroolorJooptor[index].joop}');
      return suroolorJooptor[index].joop;
    }
  }

  void otkoz() {
    index = index + 1;
  }

  void restart() {
    index = 0;
  }
}
