void main(List<String> args) {
  var database = Database.get();
  var database2 = Database.get();

  print(database == database2);
  
}

//digunakan untuk membuat constructor untuk membuat 
//object baru sesuai keinginan(return valuenya)
class Database {
  Database() {
    print('create new Database');
  }

  static Database database = Database();

  factory Database.get() {
    return database;
  }
}

