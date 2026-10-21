import 'dart:io';

void main() {
  // Quebra de linha
  print("");

  // Primeira pergunta ao usuário
  print("Digite a sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  // Quebra de linha
  print("");

  // Segunda pergunta referente ao ano atual
  print("Qual é o ano atual: ");
  int anoAtual = int.parse(stdin.readLineSync()!);

  // Quebra de linha
  print("");

  // Mensagem
  print("Ano atual: $anoAtual");
  print("Ano de nascimento: ${anoAtual - idade}");
}
