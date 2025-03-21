class Tool {
  //Attribute
  double lengthInCm;
  double weightInGramm;

  Tool({required this.lengthInCm, required this.weightInGramm});
}

class Screwdriver extends Tool {
  final bool isPocketable;

  Screwdriver(
      {required this.isPocketable,
      required super.lengthInCm,
      required super.weightInGramm});

  void pocketCheck() {
    if (isPocketable == true) {
      print("Passt in die Hosentasche");
    } else {
      ;
      print("Ist zu groß");
    }
  }
}

class Hammer extends Tool {
  final String color;

  Hammer(
      {required this.color,
      required super.lengthInCm,
      required super.weightInGramm});

  void showColor() {
    print("Die Farbe ist $color");
  }
}

void main() {
  Screwdriver scew1 =
      Screwdriver(isPocketable: true, lengthInCm: 8, weightInGramm: 85);

  Hammer ham1 = Hammer(color: "green", lengthInCm: 30, weightInGramm: 1500);

  scew1.pocketCheck();
  ham1.showColor();
}
