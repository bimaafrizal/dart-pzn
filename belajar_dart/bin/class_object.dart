import 'dart:io';

class PersegiPanjang {
  double? panjang;
  double? lebar;

  double hitungLuas() {
    return this.panjang! * this.lebar!;
  }
}

void main(List<String> args) {
  //class memiliki field dan method
  //objek realisiai dari class
  //class merupakan rancangan sebuah object
  PersegiPanjang persegiPanjang = PersegiPanjang();
  // double? testPanjang = double.tryParse(stdin.readLineSync());
  persegiPanjang.panjang = double.tryParse(stdin.readLineSync()!);
  persegiPanjang.lebar = double.tryParse(stdin.readLineSync()!);
  print(persegiPanjang.hitungLuas());
}
