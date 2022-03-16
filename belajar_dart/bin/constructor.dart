void main(List<String> args) {
  var person = Person('bima');
  print(person.name);
}

class Person {
  String name = "guest";
  String? addres;
  final String country = "Indonesia";

  Person(String name, {String addres = "no alamat"}) {
    this.name = name;
    this.addres = addres;
  }
}
