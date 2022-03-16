void main(List<String> args) {
  var vc = VicePresident();
  vc.name = 'Bima';
  vc.sayHello("achak");
}

//kemampian mendeklarasikan ulang di child class
class Manager {
  String? name;

  void sayHello(String name) {
    print('Hello $name, my name is ${this.name} i\'m your manager');
  }
}

class VicePresident extends Manager {
  void sayHello(String name) {
    print('Hello $name, my name is ${this.name} i\'m your vice president');
  }
  //type data dan banyak parameter harus sama dengan parent class
}