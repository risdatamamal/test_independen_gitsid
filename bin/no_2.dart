import 'dart:io';

//// Dart with Null Safety
void main() {
  String email;
  var notValid = false;

  do {
    stdout.write('Masukkan Email Anda (maks. 20 karakter): ');
    email = stdin.readLineSync() ?? '';

    if(email.contains('@') == false) {
      notValid = true;
      print('Tidak menggunakan tanda @');
    }

    else if(email.contains('.') == false) {
      notValid = true;
      print('Tidak menggunakan tanda . setelah @');
    }

    else if (email.length > 20) {
      notValid = true;
      print('Email Anda terlalu panjang');
    }

    else if(email.contains('.co.id') == false && email.contains('.id') == false) {
      notValid= true;
      print('Email Anda bukan .co.id dan .id');
    }

    else {
      print('Email kamu : $email');
    }

  } while (notValid);
}