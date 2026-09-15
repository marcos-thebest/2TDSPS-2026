import 'dart:io';

void main() {
  int numero = int.parse(stdin.readLineSync()!);

  void dobro() {
    print("O dobro de $numero é ${numero + numero}");
  }

  dobro();
}
