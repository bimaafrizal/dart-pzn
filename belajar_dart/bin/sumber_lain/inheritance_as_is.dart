void main(List<String> args) {
  Monster h = Monster();
  h.healthPoint = -10;
  print("Hero HP: " + h.healthPoint.toString());
  print(h.eatHuman());

  MonsterKecoa mk = MonsterKecoa();
  Monster mk2 = MonsterIkan();
  MonsterKecoa mk3 = MonsterKecoa();
  mk.healthPoint = -5;
  print("Hero HP: " + mk.healthPoint.toString());
  print(mk.eatHuman());

  List<Monster> monsters = [];
  monsters.add(MonsterKecoa());
  monsters.add(MonsterIkan());
  print("");
  for (Monster m in monsters) {
    if (m is MonsterIkan) {
      print(m.eatHuman());
      print(m.swim());
    }
  }

  //memberi tahu objek jika dia masuk class turunan jika identifier 
  //adalah sebuah class inti
  print((mk2 as MonsterIkan).swim());
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

class Monster extends Character {
  String eatHuman() => "hmmm enak";
}

class MonsterKecoa extends Monster {
  String fly() => "Syuuuu";
}

class MonsterIkan extends Monster {
  String swim() => "Syuuuu";
}
