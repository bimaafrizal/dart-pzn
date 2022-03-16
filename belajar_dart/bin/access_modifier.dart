void main(List<String> args) {
  var product = Product();
  product.id = '1';
  product.name = 'leptop';
  product._quantitiy = 100;
  print(product._getQuantitiy());
}

// gunakan underscore pada field atau mathod
//agar method atau function tidak bisa diakses file lain

class Product {
  String? id;
  String? name;
  int? _quantitiy;

  int? _getQuantitiy() {
    return _quantitiy;
  }
}
