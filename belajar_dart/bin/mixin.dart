void main(List<String> args) {
  var video = Video();
  video.name = 'Belajar dart';
  video.play();
  video.stop();
}

//reuseable code yang bisa digunakan di kelas lain
//tanpa terkendala dengan pewarisan
//mirip copy paste tapi lebih baik
//Membuat kode yang sama pada class

mixin Playable {
  String? name;

  void play() {
    print('Play $name');
  }
}

mixin Stopable {
  String? name;

  void stop() {
    print('Stop $name');
  }
}

class Video with Playable, Stopable {}

class Audio with Playable, Stopable {}

//membatasi mixin
//jika ingin membatasi hanya class turunan tertentu
//bisa tambahkan kata kunci on, diikuti dengan class yang kita batasi
abstract class Multimedia {}

mixin Playable2 on Multimedia {}
