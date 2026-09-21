// Calcular a soma dos 10 primeiros números naturais 1 a 10.

void main() {
  // Aculumador que armazena a soma parcial a cada iteração
  int soma = 0;

  // Percorrer os números naturais de 1 a 10 somando cada um ao acumulador
  for (int i = 1; i <= 10; i++) {
    soma += i;
  }
  print("A soma dos primeiros 10 números naturais é: $soma");
}
