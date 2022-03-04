void main(List<String> args) {
  //representasi data kosong
  //variabel data wajib diisi

  //agar variabel bisa diisi null perlu diisi tana tanya
  // int number1;
  // print(number1); akan error

  int? number2;
  print(number2);

  //null check
  //saat mengakses property, methodm atau operator terhadap data yang(bisa null), maka Dart memberi compile error
  //art meminta kita melakukan null check terlebih dahulu
  int? age = null;
  age = 1;
  if (age != null) {
    double addDouble = age.toDouble();
    print(addDouble);
  }
  //perlu dibuat pervcabangan untuk mengatasi null check

  //konversi nullable ke non nullable
  //untuk melakukan konversi tipe data non nullable kita bisa masukan datanya saja
  //jika tipe data nullable ke non nullabke wajib melakukan null check terlebih dahulu
  String name = "Bima";
  String? nullableName = name;

  int? nullablePrice = null;
  if (nullablePrice != null) {
    int price = nullablePrice;
  }

  //default value
  String? guest;
  //guest = 'Bima Rizal';
  var guestName = guest ?? 'Guest';
  print(guestName);

  //konversi secara paksa
  //konversi paksa dari tipe data nullable ke non nullable denhan menggunakan karakter tanda seruiu setelah nama variabel
  //jika ternyata datanya null maka akan terjadi error
  // int? nullableNumber;
  // int nonNullableNumber = nullableNumber!;
  //terjadi error karena dipaksa berjalan

  //mengakses nullable member
  //saat mengakses nullable mamber secara default akan memberi peringatan null check
  ////kita bisa mengkases secara aman dengan menambah tanda tanya
  ///hasillnya tetap nullable
  
  int? intNumber;
  double? doubleNumber = intNumber?.toDouble();
  print(doubleNumber);
}
