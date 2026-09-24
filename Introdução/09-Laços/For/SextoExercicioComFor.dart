// Exercicio para calculo de tabuada = multiplicação


import 'dart:io';

void main() {

  // Pula uma linha
  print("");

  // O usuário escolhe o número da tabuada que ele deseja ver
  print("Digite um número para saber a sua tabuada: ");
  int tabuada = int.parse(stdin.readLineSync()!);

  // Pula uma linha
  print("");

  // Loop para fazer os calculos de multiplicação e exibição na tela
  for (int i = 0; i <= 10; i++) {
    int resultado = tabuada * i;
    print("$tabuada x $i = $resultado");
  }
}
