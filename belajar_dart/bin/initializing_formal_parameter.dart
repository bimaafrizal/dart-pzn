void main(List<String> args) {
  var person = Person('bima', 'wsb');
  print(person.name);
}

class Person {
  String name = "guest";
  String? addres;
  final String country = "Indonesia";

  Person(this.name, this.addres);
}
