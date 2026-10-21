import 'dart:io';

void main() {
  // Quebra de linha
  print("");

  // Pergunta ao usuário
  print("Digite o seu nome para nós: ");
  String nome = stdin.readLineSync()!;

  // Quebra de linha
  print("");

  // Mensagem
  print("Bem-vindo, $nome!");
}
