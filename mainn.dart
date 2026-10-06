import 'dart:io';

//function penambahan
int penambahan(int a, int b) {
  int hasil = a + b;
  return hasil;
}

//function pengurangan
int pengurangan(int a, int b) {
  int hasil = a - b;
  return hasil;
}

//function perkalian
int perkalian(int a, int b) {
  int hasil = a * b;
  return hasil;
}

//function pembagian
double pembagian(int a, int b) {
  double hasil = a / b;
  return hasil;
}

void main() {
  print('1. Penambahan');
  print('2. Pengurangan');
  print('3. Perkalian');
  print('4. Pembagian');

  stdout.write('Pilih Menu: ');
  int menu = int.parse(stdin.readLineSync()!);

  int angka1;
  int angka2;

  // LOOPING INPUT
  while (true) {
    stdout.write('Masukkan angka pertama: ');
    angka1 = int.parse(stdin.readLineSync()!);

    stdout.write('Masukkan angka kedua: ');
    angka2 = int.parse(stdin.readLineSync()!);

    if (angka1 < 0 || angka2 < 0) {
      print('Angka tidak boleh negatif!');
      continue;
    }

    break;
  }

  if (menu == 1) {
    print('Hasil=${penambahan(angka1, angka2)}');
  } else if (menu == 2) {
    print('Hasil=${pengurangan(angka1, angka2)}');
  } else if (menu == 3) {
    print('Hasil=${perkalian(angka1, angka2)}');
  } else if (menu == 4) {
    if (angka2 == 0) {
      print('Tidak bisa membagi dengan 0');
    } else {
      print('Hasil=${pembagian(angka1, angka2)}');
    }
  }
}
