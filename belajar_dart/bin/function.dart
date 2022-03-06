//fucntion dasar
void sayHello() {
  print('Hello World');
  print('Hello Lagi');
  print('Hello Lagi dan lagi');
}

//function with parameter
void sayHello2(String firstName, String lastName) {
  print('Hello $firstName $lastName');
}

//function optional parameter
//parameter yang tidak wajib diisi
//harus nullable
//tidak bisa didepan
void sayHello3(String firstName, [String? middlename, String? lastname]) {
  print('Hello $firstName $middlename $lastname');
}

//default value
void sayHello4(String firstName,
    [String middlename = '', String lastname = '']) {
  print('Hello $firstName $middlename $lastname');
}

//named parameter
//agar parameter tidak harus pada posisinya
//bersifat nullable
void sayHello5({String? firstName, String lastName = 'default'}) {
  print('Hello $firstName $lastName');
}

void sayHello6({required String firstName, String lastName = 'default'}) {
  print('Hello $firstName $lastName');
}

int sum(List<int> numbers) {
  var total = 0;
  for (var value in numbers) {
    total += value;
  }
  return total;
}

//function short expression
//menyingkat jika terdapat sebuah function hanya satu baris
//tidak butuh return
int sum2(int first, int second) => first + second;

//main function
//main function parameter optional berupa argumen dimana data parameter berupa List<Sting>
//Data List<String> diambil secara otomatis ketika menjalankan file dart
//dart namafile.dart arg1 arg2 arg3
//dart namafile.dart "argumen1" "argumen2"
//digunakan untuk menadapat data parameter ketika dart dijalankan

//higher order function
//ketika ingin membuat  function general dan ingin mendapat input yang flexible berupa funcion
//dideklarasikan oleh pengguna ketika memanggil funsi tersebut
//di dalam function() merupakan parameter

void sayHello7(String name, String Function(String) filter) {
  var filteredName = filter(name);
  print('Hi $filteredName');
}

String filterBadWord(String name) {
  if (name == 'gila') {
    return '****';
  } else {
    return name;
  }
}

//anonymous function(lamda)
//function yang tidak memiliki nama
//biasanya digunakan ketika memanggil function yang membutuhkan parameter berupa function
var upperFunction = (String name) {
  return name.toUpperCase();
};
//contoh 2
void sayHello8(String name, String Function(String) filter) {
  print('Hello ${filter(name)}');
}

//recrusive function
//fungsi yang memanggil dirinya sendiri
int factorialRecursive(int value) {
  if (value == 1) {
    return 1;
  } else {
    return value * factorialRecursive(value - 1);
  }
}

int factorialLoop(int value) {
  var result = 1;

  for (var i = 1; i <= value; i++) {
    result *= i;
  }

  return result;
}
//harus berhati2
//jika terdalam akan terjadi error StackOverflox

void main() {
  sayHello();
  sayHello2('bima', 'afrizal');
  sayHello3('bima', 'afrizal');
  sayHello3('bima');
  sayHello4('bima');

  print(" ");
  sayHello5();
  sayHello5(firstName: 'Bima');
  sayHello5(lastName: 'Afrizal');
  sayHello5(lastName: 'Afrizal', firstName: 'Bima');

  sayHello6(firstName: 'Bima');

  print(sum([10, 10, 10, 10, 3]));

  var total = sum2(10, 10);
  print(total);

  //inner function
  //bisa membuat fungsi didalam fungsi
  //inner fungsi hanya bisa digunakan dalam outer function
  void sayHelloInner() {
    print("hello from inner");
  }

  sayHelloInner();

  sayHello7('gila', filterBadWord);
  sayHello7('bima', filterBadWord);

  //anonymous
  var result = upperFunction('achahaha');
  print(result);
  sayHello8('rizal', (name) => name.toUpperCase());

  //closure
  //kemapuan function berinterajsu dengan data disekitarnya dalam scope.
  var counter = 0;
  void increment() {
    print('increment');
    counter++;
  }

  increment();
  increment();
  print(counter);
  print(factorialRecursive(10));
}
