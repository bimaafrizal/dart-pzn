void main(List<String> args) {
  var vc = VicePresident();
  vc.name = 'Bima';
  vc.sayHello("achak");
}

class Manager {
  String? name;

  void sayHello(String name) {
    print('Hello $name, my name is ${this.name}');
  }
}

class VicePresident extends Manager {

}