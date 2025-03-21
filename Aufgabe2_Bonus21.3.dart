import 'dart:ffi';

class Grocery {
  //Attribute
  final String name;
  final String producer;
  final double weight;
  final double price;

  Grocery(
      {required this.name,
      required this.producer,
      required this.weight,
      required this.price});

  void ProducePlace() {
    print("Der $producer produziert im Ausland.");
  }
}

class Milch extends Grocery {
  final String type;

  Milch(
      {required this.type,
      required super.name,
      required super.producer,
      required super.weight,
      required super.price});

  @override
  void ProducePlace() {
    print("$name wird lokal produziert");
  }
}

enum Streichfaehigkeit { schwer, mittel, leicht }

class Butter extends Grocery {
  Streichfaehigkeit streichfaehigkeit;

  Butter(
      {required this.streichfaehigkeit,
      required super.name,
      required super.producer,
      required super.weight,
      required super.price});

  @override
  void Produceplace() {
    print(
        "Der Produktionsort & die Streichfähihkeit von $name stehen in keinem Zusammenhang.");
  }
}

void main() {
  Milch sorte1 = Milch(
      type: "Hafermilch",
      name: "Milram Classic Fresh",
      producer: "Milram",
      weight: 1000,
      price: 1.89);

  sorte1.ProducePlace();

  Butter fav1 = Butter(
      streichfaehigkeit: Streichfaehigkeit.mittel,
      name: "Die neue Gesalzene",
      producer: "Weihenstephan",
      weight: 500,
      price: 2.49);

  fav1.Produceplace();
}
