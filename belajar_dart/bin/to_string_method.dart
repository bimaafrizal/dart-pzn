void main(List<String> args) {
  var product = Product();
  product.id = '1';
  product.name = 'Laptop';
  product._quantitiy = 100;
  product._getQuantity();

  print(product.toString());
}

class Product {
  String? id;
  String? name;
  int? _quantitiy;

  int? _getQuantity() {
    return _quantitiy;
  }

  String toString() {
    return "Product{id=$id, name= $name, quantitiy = $_quantitiy}";
  }
}
