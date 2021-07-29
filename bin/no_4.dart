import 'dart:io';

void main() {
  print('Masukkan Kalimat: ');

  var kalimatasli = stdin.readLineSync();
  String? dibalik = kalimatasli!.split('').reversed.join('');

  print(dibalik);
}