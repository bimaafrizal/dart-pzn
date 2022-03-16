void main(List<String> args) {
  var rectangle = Rectangle();
  rectangle.width = -1;
  rectangle.length = -1;
  print(rectangle.width);
  print(rectangle.length);
}

class Rectangle {
  int _width = 0;
  int _length = 0;

  int get width => _width;
  int get length => _length;

  // set width(int value) => _width = value;
  // set length(int value) => _length = value;
  set width(int value) {
    if (value < 0) {
      _width = value * -1;
    } else {
      _width = value;
    }
  }

  set length(int value) {
    if (value < 0) {
      _length = value * -1;
    } else {
      _length = value;
    }
  }
}
