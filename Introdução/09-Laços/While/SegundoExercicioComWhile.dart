void main() {

  // Declarando variáveis
  int numerosPares = 0;
  int numerosImpares = 0;
  int i = 1;

  // Um laçõ de repetição que irá parar até que a variável "i" tenha o valor de 100
  while (i <= 100) {
    // Verificação se o número é "par" ou "impar"...
    if (i % 2 == 0) {
      print("$i é par!");
      numerosPares++;
    } else {
      print("$i é impar!");
      numerosImpares++;
    }
    i++;
  }

  // Exibindo o total de números pares e impares salvos dentro das nossas variáveis
  print("");
  print("Total de números pares em um intervalo de (1 a 100): $numerosPares");
  print(
    "Total de números impares em um intervalo de (1 a 100): $numerosImpares",
  );
}
