void main(List<String> args) {
  var nilai = 80;
  var absen = 0;

  if (nilai >= 80 && absen >= 80) {
    print('Nilai Anda A');
  } else if (nilai >= 70 && absen >= 70) {
    print('Nilai Anda B');
  } else if (nilai >= 60 && absen >= 60) {
    print('Nilai Anda C');
  } else if (nilai >= 50 && absen >= 50) {
    print('Nilai Anda D');
  } else {
    print('Nilai Anda E');
  }

  var nilai2 = 'E';

  switch (nilai2) {
    case 'A':
      print('Wow Anda Lulus Dengan Baik');
      break;
    case 'B':
    case 'C':
      print('Anda Lulus');
      break;
    case 'D':
      print('Anda Tidak Lulus');
      break;
    default:
      print('Mungkin Anda Salah Jurusan');
  }

  //ternary
  var nilai3 = 80;
  var ucapan = nilai3 >= 75 ? 'Selamat Anda Lulus' : 'Silahkan Coba Lagi';

  // if(nilai >= 75){
  //   ucapan = 'Selamat Anda Lulus';
  // }else{
  //   ucapan = 'Silahkan Coba Lagi';
  // }

  print(ucapan);
}
