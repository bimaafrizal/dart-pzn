void main(List<String> args) {
  Employee employee = Employee("Eko");
  print(employee);

  employee = Manager('afrizal');
  print(employee);

  employee = VicePresident('Malna');
  print(employee);

  sayHello(Employee('Bima'));
  sayHello(Manager('bima'));
  sayHello(VicePresident('afrizal'));
}

//kemampuan object berubah bentuk menjadi yang
// lain dalam turunan
//parent class
class Employee {
  String name;
  Employee(this.name);
}

class Manager extends Employee {
  Manager(String name) : super(name);
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name);
}

void sayHello(Employee employee) {
  print('Hello ${employee.name}');
}
