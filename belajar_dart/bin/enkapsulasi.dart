import 'dart:io';

void main(List<String> args) {
  //untuk menyembunyikan data yang tidak diperlukan
  PersegiPanjang persegiPanjang = PersegiPanjang();
  // double? testPanjang = double.tryParse(stdin.readLineSync());
  persegiPanjang.lebar = 3;
  persegiPanjang.panjang = -2;
  //persegiPanjang._panjang = double.tryParse(stdin.readLineSync()!);
  //persegiPanjang._lebar = double.tryParse(stdin.readLineSync()!);
  print(persegiPanjang.luas);
  print(persegiPanjang.lebar);
}

class PersegiPanjang {
  double? _panjang;
  double? _lebar;

  //menggunakan property untuk validasi
  void set lebar(double lebar){
    if(lebar < 0) {
      lebar *= -1;
    }
    _lebar = lebar;
  }

  void set panjang(double panjang) {
    if(panjang < 0) {
      panjang *= -1;
    }
    _panjang = panjang;
  }

  double get panjang{
    return _panjang!;
  }
  double get lebar{
    return _lebar!;
  }
  //kurang tepat karena persegi panjang tidak bisa menhitung luas
  double hitungLuas() {
    return this._panjang! * this._lebar!;
  }
  //yang benar mrnggunakan field
  double get luas => _panjang! * _lebar!;
}
