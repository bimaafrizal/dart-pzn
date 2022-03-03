void main(List<String> args) {
  //number
  ///ada dua jenis tipe data number yaitu int dan double
  int number1 = 10;
  double numnber2 = 10.5;

  print(number1);
  print(numnber2);

  //num
  /// digunakan ketika tipe datanya number bisa berubah
  num number = 10;
  print(number);
  number = 10.8;
  print(number);

  //boolean
  ///ditulis dengan bool
  bool finish = false;
  print(finish);

  //string
  ///berupa text
  ///bisa kutip satu dan kutip dua(tekomendasi kutip satu)

  //string interpolation
  ///membuat string dan mengambil data dari variabel

  String firstName = 'Bima';
  String lastName = "Afrizal";

  var fullName = '$firstName ${lastName}';
  print(fullName);

  //karakter backslah
  var text = 'this is \'dart\' code';
  print(text);

  //menggabungkan string
  var fullName2 = firstName + "" + lastName;
  var fullName3 = "Bima " + " Afrizal";
  print(fullName2);
  print(fullName3);

  //multiline String
  //jika string tidak dalam satu baris
  var longString = '''this is 
long string 
multiline ''';
  print(longString);

  //Dynamic
  //variabel yang bisa menampung semua jenis tipe data
  //var termasuk dynamic
  dynamic variabelDyanamic = 100;
  print(variabelDyanamic);
  variabelDyanamic = "bima";
  print(variabelDyanamic);
  variabelDyanamic = true;
  print(variabelDyanamic);

  //konversi tuipe data
  //number ke string dengan toString()
  //string ke number parse()
  //number ke number toInt() atau toDouble()
  var inputString = '1000';
  var inputInt = int.parse(inputString);
  var inputDouble = double.parse(inputString);

  print(inputString);
  print(inputInt);
  print(inputDouble);

  var intToDouble = inputInt.toDouble();
  var doubleToInt = intToDouble.toInt();
  var intToString = inputInt.toString();

  //boolean to string
  var inputStringBoolean = 'true';
  var booleanToString = inputStringBoolean.toString();
}
