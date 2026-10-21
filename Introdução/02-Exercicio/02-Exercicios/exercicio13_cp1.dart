// Checkpoint 01 - Exercício 01: Boletim da Turma
// Marcos Vinicius de Jesus Almeida | RM: 567214
// Conceitos: variáveis - função void - array (list) - for - if/else

void mostrarMedia(List<double> notas) {
  double soma = 0;
  for (var nota in notas) {
    soma += nota;
  }
  double media = soma / notas.length;
  print("Média da turma: ${media.toStringAsFixed(1)}");
}

void mostrarMaiorNota(List<double> notas) {
  double maior = notas[0];
  for (var nota in notas) {
    if (nota > maior) {
      maior = nota;
    }
  }
  print("Maior nota: $maior");
}

void mostrarMenorNota(List<double> notas) {
  double menor = notas[0];
  for (var nota in notas) {
    if (nota < menor) {
      menor = nota;
    }
  }
  print("Menor nota: $menor");
}

void mostrarSituacao(List<double> notas) {
  double soma = 0;
  for (var nota in notas) {
    soma += nota;
  }
  double media = soma / notas.length;

  if (media > 7) {
    print("Aprovado");
  } else if (media >= 5 && media < 7) {
    print("Recuperação");
  } else {
    print("Reprovado");
  }
}

void main() {
  // Lista de notas da turma usada como exemplo pelo enunciado.
  List<double> notas = [7.5, 4.0, 9.2, 6.0, 3.8];

  // Cada função imprime sua própria linha de resultado.
  mostrarMedia(notas);
  mostrarMaiorNota(notas);
  mostrarMenorNota(notas);
  mostrarSituacao(notas);
}
