// Exercício imprimindo todos os multiplos de 5 no intervalo de 0 a 50;

// O operador % modulo verifica se o número é divisível por outro

void main() {
  // Percorre todos os inteiros de 0 a 50.
  for (int i = 1; i <= 50; i++) {
    // Imprimindo apenas os divisíveis por 5
    if (i % 5 == 0) {
      print(i);
    }
  }
}
