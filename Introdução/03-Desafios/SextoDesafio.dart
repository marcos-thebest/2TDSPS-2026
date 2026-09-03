// Saida esperada:

// Média e Status de nota dos alunos.
// Utilize os operadores = soma e / divisão

double calcularMedia(
  final double primeiraNota,
  final double segundaNota,
  final double terceiraNota
) {
  return (primeiraNota + segundaNota + terceiraNota) / 3;
}

void main() {
  // Armazenando a média dentro de uma variável
  final double media = calcularMedia(7.8, 8.5, 9.0);

  // Avalia a condição e retorna aprovado ou reprovado
  final String status = media >= 7 ? "Aprovado" : "Reprovado";

  print("Média: ${media.toStringAsFixed(1)}");
  print("Status: $status");
}
