import 'dart:io';

void main() {
  // Variáveis com mensagem

  // Quebra de linha
  print("");

  // Primeira pergunta
  print("Digite o primeiro número: ");
  double primeiroNumero = double.parse(stdin.readLineSync()!);

  // Quebra de linha
  print("");

  // Segunda pergunta
  print("Digite o segundo número: ");
  double segundoNumero = double.parse(stdin.readLineSync()!);

  double soma = primeiroNumero + segundoNumero;

  // Quebra de linha
  print("");

  // Mensagem do resultado no terminal
  print("$primeiroNumero + $segundoNumero = ${soma.toStringAsFixed(1)}");
}
