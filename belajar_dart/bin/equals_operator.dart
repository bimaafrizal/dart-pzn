import 'to_string_method.dart';

void main(List<String> args) {
  var category = Category('1', 'Laptop');
  var category2 = Category('1', 'Laptop');
  print(category == category2);
}

//untuk membandingkan diua buah object apakah sama 
//atau tidak biasanya menggunakan operator ==
//secara default operator == adalah milik class Object, implementasinya 
//jika menggunakan operator == melakukan pengecekan kesamaan kesamaan 
//object dari memorry
//untuk membandingkan object perlu overide

class Category{
  String id;
  String name;

  Category(this.id, this.name);

  bool operator ==(Object other) {
    if(other is Category) {
      if(id != other.id) {
        return false;
      } else if(name != other.name) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }
}