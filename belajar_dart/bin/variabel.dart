import 'dart:ffi';

void main(List<String> args) {
  //deklarasi langsung sesuai dengan tipe data
  String name = "Bima";
  print(name);

  //var
  ///dibaca otomatis sesuai dengan isinya
  ///harus diisi langsung tidak bisa kosong
  var name2 = "bima";
  print(name2);

  //final
  ///tidak bisa di rediclare
  ///nilainya bisa berubbah ketika dicompile tetapi ketika running tidak bisa dirubah
  ///penulisan final tipeData namaVaribel = nilai
  ///penulisan final namaVariabel = value
  final name3 = "bima rizal";
  print(name3);

  //const
  ///data tidak bisa dirubah ketika dicompile ataupun dirun
  final array = [1, 2, 3];
  const array2 = [1, 2, 3];
  ///yang tdk  boleh
  //array = [0, 0, 0];

  ///yang diperbolehkan
  array[0] = 10;
  print(array);

  //late
  ///variabel dideklarasikan nanti jika variabel diakses
  late var value = getValue();
  print('Variabel sudah dibuat');
  print(value);
  ///jika tidak menggunakan late maka akan muncul get value dipanggil terlebih dahulu 
  ///dibanding variabel sudah dibuat
}

String getValue() {
  print("getvalue() dipanggil");
  return "Bima";
}

