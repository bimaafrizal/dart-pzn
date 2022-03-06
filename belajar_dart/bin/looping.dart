void main(List<String> args) {
  //for
  for (var counter = 1; counter <= 10; counter++) {
    print('Perulangan Ke-$counter');
  }

  //while
  var counter2 = 1;

  while (counter2 <= 10) {
    print('Perulangan ke-$counter2');

    counter2++;
  }

  var counter3 = 1;

  do {
    print('Perulangan ke-$counter3');
    counter3++;
  } while (counter3 <= 10);
  //minimal dirun sekali wlaupun false

  //break continue
  var counter4 = 1;

  while (true) {
    print('Perulangan ke-$counter4');
    counter4++;

    if (counter4 > 10) {
      break;
    }
  }

  for (var counter5 = 1; counter5 <= 100; counter5++) {
    if (counter5 % 2 == 0) {
      continue;
    }

    print('Perulangan ke-$counter5');
  }

  //for in(for each)
  //bisa list set
  var array = <String>['Bima', 'Afrizal', 'Malna'];
  for (var value in array) {
    print(value);
  }
}
