import 'dart:io';

void main() {
  // Declarando uma variável
  print("");
  print("Digite o seu nome: ");
  String nome = stdin.readLineSync()!;

  print("");
  print("Digite o ano em que você nasceu: ");
  int anoNascimento = int.parse(stdin.readLineSync()!);

  // Calculo da idade
  int idade = 2026 - anoNascimento;

  print("");
  print("Meu nome é $nome e tenho $idade anos de idade.");
}
