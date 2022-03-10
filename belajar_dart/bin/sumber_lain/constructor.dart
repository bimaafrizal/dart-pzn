void main(List<String> args) {
  Person p = Person("Joko");
  // p.name = "Joko";
  print(p.name);

  Person2 p2 = Person2();
  Person2 p3 = Person2(name: 'Bima');
  print(p2.name);
  print(p3.name);

  Student s1 = Student(name: "bima afrizal");
  print(s1.name);
}

class Person {
  String? name;

  Person(name) {
    //print("sedag membuat objek person");
    this.name = name;
  }
}

class Person2 {
  String? name;
  Person2({String name = 'no name'}) {
    print('constractor Person2');
    this.name = name;
  }
}

class Student extends Person2 {
  //jika turunan dari class lain maka yang dipanggil constructor yang dipanggil di main class dan turunannya
  //secara default yang dipakai constructor yang main class
  Student({String name = 'studentbaru'}) : super(name: name) {
    print('constructor student');
  }
}
