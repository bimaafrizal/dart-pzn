void main(List<String> args) {
  
}
//digunakan ketika kita ingin melakukan konversi tipe data aslinya
//agar aman sebelum konversi perlu melakukan type check dengan is
//hasilnya boolean
//gunakan kunci as

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
  if(employee is VicePresident) {
    VicePresident vicePresident = employee as VicePresident;
    print('Hello Vice President ${vicePresident.name}');
  } else if(employee is Manager) {
    Manager manager = employee as Manager;
    print('Hello Manager ${manager.name}');
  } else {
    print('Hello ${employee.name}');
  }
}
