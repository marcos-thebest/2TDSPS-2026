void main() {

  // Declarando variáveis
  int numerosPares = 0;
  int numerosImpares = 0;

  // Laço de repetição com um intervalo de 1 até 100
  for (int comeco = 1; comeco <= 100; comeco++) {
    // Verificação se o número é "par" ou "impar"...
    if (comeco % 2 == 0) {
      print("$comeco é par!");
      numerosPares++;
    } else {
      print("$comeco é impar!");
      numerosImpares++;
    }
  }

  // Exibindo o total de números pares e impares salvos dentro das nossas variáveis
  print("");
  print("Total de números pares em um intervalo de (1 a 100): $numerosPares");
  print("Total de números impares em um intervalo de (1 a 100): $numerosImpares");
}
