void main(List<String> args) {
  var person = OtherPerson();
  person.sayHello('bima');
}

class Person {
  String name = "person";
  void sayHello(String name) {
    print('Hello $name, my name is ${this.name}');
  }
}

class OtherPerson extends Person {
  String name = "other Person";
}