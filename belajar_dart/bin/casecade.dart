void main(List<String> args) {
  var user = User()
  ..username ='bima'
  ..name = 'Bima'
  ..email = 'bima@mail.com';
  
  User? user2 = createUser()
  ?..username = 'bima'
  ..name = "bima"
  ..email = 'bimarizal@mail.com';
}

User? createUser() {
  return null;
}

//digunakan untuk memberikan beberapa operasi pada object yang sama
///ada dua notasi yaitu .. dan ..?
//.. digunakan pada nonnullable sedangkan ?.. pada nullable
class User {
  String? username;
  String? name;
  String? email;

  
}