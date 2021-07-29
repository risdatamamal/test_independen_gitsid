import 'dart:io';

//// Dart with Null Safety
void main() {
  String email;
  var notValid = false;

  do {
    stdout.write('Masukkan Email Anda (maks. 20 karakter): ');
    email = stdin.readLineSync() ?? '';

    if (email != '') {
      notValid = true;
      print('Tidak menggunakan tanda @');
    }

    // if() {}

    if (email.length > 20) {
      notValid = true;
      print('Email Anda terlalu panjang');
    }

    // if(email != '.co.id'.toString() && email != '.id'.toString()) {
    //   notValid= true;
    //   print('Email Anda bukan .co.id dan .id');
    // }

  } while (notValid);
  stdout.write('Email kamu : ${email}');
}