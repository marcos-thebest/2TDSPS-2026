import 'dart:io';

void main() {

  print("Digite o seu nome: ");
  String nome = stdin.readLineSync()!;

  print("Digite a sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  print("Digite a sua altura: ");
  double altura = double.parse(stdin.readLineSync()!);

  // Interpolação
  print("");
  print("Olá, eu me chamo $nome e tenho $idade anos de idade com $altura m");
}
