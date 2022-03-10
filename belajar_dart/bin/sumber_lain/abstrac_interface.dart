void main(List<String> args) async {
  // MonsterKecoa mk = MonsterKecoa();
  // Monster mk2 = MonsterIkan();
  // MonsterKecoa mk3 = MonsterKecoa();
  // mk.healthPoint = -5;
  // print("Hero HP: " + mk.healthPoint.toString());
  // print(mk.eatHuman());

  List<Monster> monsters = [];
  monsters.add(MonsterKecoa());
  monsters.add(MonsterIkan());
  monsters.add(MonsterUcoa());
  print("");
  for (Monster m in monsters) {
    if (m is FlyingMonster) {
      //print(m.eatHuman());
      print((m as FlyingMonster).fly());
      //print(m.swim());
    }
  }

  //memberi tahu objek jika dia masuk class turunan jika identifier
  //adalah sebuah class inti
  //print((mk2 as MonsterIkan).swim());
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

class MonsterUcoa extends MonsterIkan implements FlyingMonster {
  @override
  String fly() {
    // TODO: implement fly
    return "Terbang mencari sasaran";
    throw UnimplementedError();
  }
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
