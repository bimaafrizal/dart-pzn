void main(List<String> args) {
  Customer cs = Customer("Bima Afrizal Malna");
  print(cs.firstName);
  print(cs.lastName);
}
//tempat dimana kita dapat mengubah field pada object sebelum block constructor
class Customer {
  String firstName = '';
  String lastName = '';
  String fullName = '';

  Customer(this.fullName) 
  : firstName = fullName.split(" ")[0],
  lastName = fullName.split(" ")[1] {
    print('create new customer');
  }
}
