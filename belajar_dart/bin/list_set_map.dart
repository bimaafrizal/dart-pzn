import 'dart:ffi';

void main(List<String> args) {
  //list
  //harus ada tipe datanya
  // semua tipe data adalah object
  //List<Tipe data> namaVariabel = [];

  List<int> listInt = [];
  var listString = <String>[];

  print(listInt);
  print(listString);

  //menambahkan data ke list
  var names = <String>[];
  names.add('Bima');
  names.add('Afrizal');
  names.add('Malna');

  print(names);
  print(names.length);

  //index list
  //edit data list
  //list[index] = value baru (edit data)
  //list.removeAt(index) mengahapus data
  print(names[0]);
  names[0] = "Ga tau";
  print(names);

  names.removeAt(1);
  print(names);

  //deklarasi secara langsung
  var names2 = <String>[
    'Eko',
    'Kurniawan',
    'Khannedy',
  ];

  //set
  //mirip list tapi datanya tidak boleh duplikat
  //tidak menjamin urutan data, tidak menggunakan index
  Set<int> numbers = {};
  var strings = <String>{};
  var doubles = <Double>{};

//manipulasi set
//.length
//.add(value)
//set.remove(value)
//jika ada duplikat yang diterima satu aja
  var names3 = <String>{
    'Eko',
    'Eko',
    'Kurniawan',
    'Kurniawan',
    'Khannedy',
  };

  names3.add('tidak ada');
  print(names3);
//map
//mirip dengan list tapi dengan key-value
  Map<String, String> map1 = {};
  var map2 = Map<String, String>();
  var map3 = <String, String>{};
  var names4 = <String, String>{
    'first': 'Rizsl',
    'middle': 'Alfa',
    'last': 'Fajar',
  };

  print(names4);
  print(names4['first']);
  names4['first'] = 'bima';
  print(names4);
  names4.remove('last');
  print(names4);
}
