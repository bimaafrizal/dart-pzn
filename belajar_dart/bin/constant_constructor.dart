void main(List<String> args) {
  //ketika memanggil harus menggunakan const
  //jika tidak menggunakan const maka akan membuat objek yang berbeda
  var point1 = const ImmutablePoint(10, 10);
  var point2 = const ImmutablePoint(10, 10);

  print(point2 == point1);
}
//digunakan jika class yang r=tidak pernah berubah datanya dalam objek yang sama
class ImmutablePoint {
  final int x;
  final int y;

  const ImmutablePoint(this.x, this.y);
}
//field harus final