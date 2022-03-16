class Person {
  String name = 'guest';
  int? umur;
  final String country = "Indonesia";

  void sayHello(String paramName) {
    print('Hello $paramName, My name is $name');
  }

  //method expression body
  //digunakan ketika menggunakan satu baris kode
  void sayHello2() => print('hay maniez');
  int getUmur() => this.umur!;
}
//extension method
//digunakan untuk menambahkan method yang sudah ada tanpa harus mengubah class
extension GoodByeOnPerson on Person {
  void sayGoodBye(String paramName) {
    print('Good Bye $paramName, from $name');
  }
}

void main(List<String> args) {
  var person1 = Person();
  Person person2 = Person();

  person1.name = "bima";
  person1.umur = 10;
  print(person1.name);
  print(person1.umur);
  person1.sayHello("bima");
  print(person1.getUmur()); 
  person1.sayGoodBye("afrizal");
}
