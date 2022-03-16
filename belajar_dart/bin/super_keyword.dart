void main(List<String> args) {
  var rectangle = Rectangle(4);
  print(rectangle.getCorner());
  print(rectangle.getParentCorner());
}

//untuk mengakses method class parent
class Shape {
  int? banyaknya;
  int getCorner() {
    return 0;
  }

  Shape(this.banyaknya) {}
}

class Rectangle extends Shape {
  //super constructor
  Rectangle(int? banyaknya) : super(banyaknya) {
    print('create new Rectangle sebanya $banyaknya');
  }


  

  int getCorner() {
    return 4;
  }

  int getParentCorner() {
    return super.getCorner();
  }
}
