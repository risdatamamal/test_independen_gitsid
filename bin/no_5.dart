import 'dart:io';

void main() {
  print('Enter Kalimat: ');

  var original = stdin.readLineSync();
  String? reverse = original!.split('').reversed.join('');

  if(original.substring(0, 5) == reverse.substring(0, 5))
  {
    print(reverse);
    print('True (karena palindrome)');
  } else {
    print(reverse);
    print('False, (karena bukan palindrome)');
  };
}