import 'dart:io';

void main() {
  // Declarando variáveis
  double soma = 0;

  // Lista para armazenar as notas
  final List<double> notas = [];

  // Loop para entrada de dados
  for (int rotas = 1; rotas <= 3; rotas++) {
    print("");
    print("Digite a sua $rotasª nota: ");
    double nota = double.parse(stdin.readLineSync()!);
    notas.add(nota);
  }

  for (var i in notas) {
    soma += i;
  }

  // Calculando a média
  final double media = soma / 3;

  // Exibindo a mensagem
  print("");
  print("Média: ${media.toStringAsFixed(1)}");
}
