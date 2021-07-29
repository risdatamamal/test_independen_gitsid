import 'dart:io';

//// Dart with Null Safety
void main() {
  String output;

  stdout.write('Masukkan bilangan: ');
  var input = stdin.readLineSync();
  var inputInt = int.tryParse(input ?? '');

  output = (inputInt! % 3 == 0 && inputInt % 5 == 0) ? 'Hello World'
      : (inputInt % 3 == 0) ? 'Hello'
      : (inputInt % 5 == 0) ? 'World'
      : '';

  print(output);
}