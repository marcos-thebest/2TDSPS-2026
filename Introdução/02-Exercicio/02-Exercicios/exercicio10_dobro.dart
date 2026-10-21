import 'dart:io';

void main() {
  // Quebra de linha
  print("");

  // Entrada de dados do usuário
  print("Entre com um número para saber o dobro: ");
  int numero = int.parse(stdin.readLineSync()!);

  // Mensagem
  print("Dobro de $numero = ${numero + numero}");
}
