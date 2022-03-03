void main(List<String> args) {
//operator aritmatika
// Tambah (+)
// Kurang (–)
// Kali (*)
// Bagi (/) hasil double
// Modulus (%)
//minus dengan -expressionm
// Bagi hasil int (~/)

//operator perbandingan
// ==
// !=
// >=
// <=
// <
// >
//hasil perbandingan boolean


//operator penugasan
// +=
// -=
// *=
// /=
// ~/=
// %=

//increment decrement
//++var var = 1 + var
//var++ var = var +1
//--var var = -1 + var
//var-- var = var -1

//operator logika
//hasilnya logika
//&& (dan)
//|| (atau)
//! (kebalikan) jika nilai truee jadi false begitu juga sebaliknya


//operator type test
//as melakukan konversi dengan paksa
//is true jika sesuai tipe data
//is! true jika tidak sesuai
dynamic variabel = 100;
var variabelInt = variabel as int;

var isInt = variabel is int;
var isNotBoolean = variabel is! bool;

print(variabelInt);
print(isInt);
print(isNotBoolean);
}