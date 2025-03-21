import 'dart:html_common';

class Tool {
  //Attribute
  double lengthInCm;
  double weightInGramm;

  Tool({required this.lengthInCm, required this.weightInGramm});
}

class Scewdriver extends Tool {
  final bool isPocketable;

  Scewdriver(
      {required this.isPocketable,
      required super.lengthInCm,
      required super.weightInGramm});

  void PocketCheck() {
    if (isPocketable == true) {
      print("Passt in die Hosentasche");
    } else
      ;
    print("Ist zu groß");
  }
}

class Hammer extends Tool {
  final String color;

  Hammer(
      {required this.color,
      required super.lengthInCm,
      required super.weightInGramm});

  void ShowColor() {
    print("Die Farbe ist $color");
  }
}
