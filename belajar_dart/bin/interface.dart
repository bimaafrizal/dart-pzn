//interface mirip abstarct class
//akan tetapi semua method otomatis abstract
//bisa lebih dari satu
void main(List<String> args) {}

abstract class Car {
  String name = "";
  void drive();
  int getTier() => 0;
}

abstract class HasBrand {
  String getBrand();
}

class Avanza implements Car, HasBrand {
  @override
  String name = "Avanza";

  @override
  void drive() {
    // TODO: implement drive
    print('Avanza is running');
  }

  @override
  int getTier() {
    // TODO: implement getTier
    return 4;
  }

  @override
  String getBrand() {
    // TODO: implement getBrand
    return "Toyota";
    throw UnimplementedError();
  }
}
