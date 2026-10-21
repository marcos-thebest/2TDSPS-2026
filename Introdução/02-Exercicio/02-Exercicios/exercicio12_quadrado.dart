import 'dart:io';

void main() {
  // Quebra de linha
  print("");

  // Pergunta para o usuário escolher um número
  print("Escolha um número qualquer (positivo): ");
  int numero = int.parse(stdin.readLineSync()!);

  // Somando o resultado e guardando em uma variável
  int quadrado = numero * numero;

  // Quebra de linha
  print("");

  // Mensagem do resultado no terminal
  print("$numero ao quadrado = $quadrado");
}
