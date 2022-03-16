//abstract tidak bisa dibuat menjadi object
//hanya bisa menjadi parent class

abstract class Location {
  String? name;

//abstrac method abstrac yang hanya terdapat di class abstract
//tidak boleh menambahakan abstract method
//turunannya harus membuat method tersebut
  void macet();
}

class City extends Location {
  City(String name) {
    this.name = name;
  }

  @override
  void macet() {
    // TODO: implement macet
    print("bum bum bum");
  }
}

void main(List<String> args) {
  var city = City('wsb');
  print(city.name);
  city.macet();
}
