class QuizModel {
  final String? suroo;
  final bool? joop;

  QuizModel({
    this.suroo,
    this.joop,
  });

  final redmi = TelephoneModel(
    name: 'Redmi',
    chygarykganJeri: 'China',
    estutum: 128,
    price: 40000,
  );
}

final QuizModel quizModel = QuizModel();

class Saposhka {
  final String? material;
  final int? razmer;
  final int? price;
  Saposhka({
    this.material,
    this.price,
    this.razmer,
  });
}

class TelephoneModel {
  final String? name;
  final int? price;
  final String? chygarykganJeri;
  final int? estutum;

  TelephoneModel({
    required this.name,
    required this.price,
    required this.chygarykganJeri,
    required this.estutum,
  });
}

class TelephoneSamsung {
  String name = 'Samsung';
  int price = 50000;
  String chygarykganJeri = 'Korea';
  int estutum = 256;
}
