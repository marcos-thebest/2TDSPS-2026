// Primeiro Exercício com Input em Linguagem Dart

import 'dart:io';

void main() {
  print("");
  print("Qual é o seu nome?");
  String? nome = stdin.readLineSync();

  print("");
  print("Qual é a sua idade?");
  String? idade = stdin.readLineSync();

  // Mensagem exibindo o nome e a idade do usuário!
  print("");
  print("Olá, $nome, seja bem-vindo. Você tem $idade anos. Certo?");
}
