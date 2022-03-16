void main(List<String> args) {
  var person = Person('bima', 'wsb');
  var person2 = Person.withName("afrizal");
  var person3 = Person.withAddress('wsb');
  var person4 = Person.withName2("afrizal");
  var person5 = Person.fromJakarta();
  print(person4.name);
  print(person4.addres);
  print(person5.addres);

}

//constructor dengan nama yang berbeda
class Person {
  String name = "guest";
  String? addres;
  final String country = "Indonesia";

  Person(String name, String addres) {
    this.name = name;
    this.addres = addres;
  }
  Person.withName(this.name) {
    this.name = name;
  }
  Person.withAddress(this.addres) {
    this.addres = addres;
  }

  //redirect parameter
  //tidak bisa membuat body karena hanya menerima parameter

  Person.withName2(String name) : this(name, "");
  Person.withAddress2(String address) : this("", address);

  //redirecting ke named constructor
  Person.fromJakarta() : this.withAddress2("jakarta");
}
