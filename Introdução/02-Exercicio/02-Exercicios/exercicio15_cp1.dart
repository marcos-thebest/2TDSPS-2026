// Ckeckpoint Exercício 03: Filtro de Números Primos
// Marcos Vinicius de Jesus Almeida | RM: 567214
// Conceitos: variáveis (bool local) - função void - array - for - if

void mostrarResultado(List<int> primos, List<int> naoPrimos) {
  print("Primos (${primos.length}): $primos");
  print("Não primos (${naoPrimos.length}): $naoPrimos");
}

void main() {
  // Começo com as listas para armazenar os números inteiros
  List<int> numeros = [2, 15, 17, 21, 29, 33, 41, 49];
  List<int> primos = [];
  List<int> naoPrimos = [];
  int maiorPrimo = -1;

  for (int numero in numeros) {
    bool ePrimo = true;

    if (numero <= 1) {
      ePrimo = false;
    } else {
      for (int i = 2; i <= numero / 2; i++) {
        if (numero % i == 0) {
          ePrimo = false;
          break;
        }
      }
    }

    // Guarda o número na lista certa, de acordo com o resultado do teste.
    if (ePrimo) {
      primos.add(numero);

      if (numero > maiorPrimo) {
        maiorPrimo = numero;
      }
    } else {
      naoPrimos.add(numero);
    }
  }

  // Exibição dos resultados
  mostrarResultado(primos, naoPrimos);
  print("Maior primo encontrado: $maiorPrimo");
}
