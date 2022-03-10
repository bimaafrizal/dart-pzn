void main(List<String> args) async {
  List<Monster> monsters = [];
  monsters.add(MonsterKecoa());
  monsters.add(MonsterIkan());
  monsters.add(MonsterUcoa());
  print("");
  for (Monster m in monsters) {
    if (m is DrinkAbility) {
      print((m as DrinkAbility).drink());
    }
  }

}

class Character {
  int? _healthPoint;

  int get healthPoint => _healthPoint!;
  void set healthPoint(int value) {
    if (value < 0) {
      value *= -1;
      _healthPoint = value;
    }
  }
}

abstract class Monster extends Character {
  String eatHuman() => "hmmm enak";
  String move();
}


class MonsterKecoa extends Monster implements FlyingMonster {
  String fly() => "Syuuuu";

  @override
  String eatHuman() {
    // TODO: implement eatHuman
    return "makan sisa makanan";
  }

  @override
  String move() {
    // TODO: implement move
    return "jalan-jalan";
    throw UnimplementedError();
  }
}

class MonsterIkan extends Monster {
  String swim() => "Syuuuu";

  @override
  String move() {
    // TODO: implement move
    return "berenang";
    throw UnimplementedError();
  }
}

//interface
//mirip abstract tapi tidak untuk di turunkan
//kumpulan method yang harus dimiliki class
///abstract cuma bisa satu interface bisa banyak
abstract class FlyingMonster {
  String fly();
}

//mixin
//mirip interface tetapi bukan dipaksakan, lebih keditambahkan
//on digunakan untuk memilih class dan turunan yang diperbolehkan menggunakan mixin
mixin DrinkAbility on  MonsterIkan{
  String drink() => "Gluk gluk gluk";
}

class MonsterUcoa extends MonsterIkan with DrinkAbility implements FlyingMonster {
  @override
  String fly() {
    // TODO: implement fly
    return "Terbang mencari sasaran";
    throw UnimplementedError();
  }
}