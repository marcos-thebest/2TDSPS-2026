// Criar uma classe Aluno e encapsular notas e as regras de aprovação.

class Aluno {

  // Atributos
  String nome;
  double soma = 0;
  int totalNotas = 0;

  // Construtor
  Aluno(this.nome);

  // Métodos
  void somarNotas(double nota) {
    soma = soma + nota;
    totalNotas++;
  }

  double calcularMedia() {
    return soma / totalNotas;
  }

  String classificarSituacao() {
    double media = calcularMedia();

    // Estrutura Condicional
    if (media >= 7) {
      return "Aprovado";
    }

    if (media >= 5) {
      return "Recuperação";
    }
    return "Reprovado";
  }
}

void main() {
  // Instanciando um objeto
  Aluno aluno1 = Aluno("Marcos");

  // Chamando os métodos da classe
  aluno1.somarNotas(8);
  aluno1.somarNotas(7);
  aluno1.somarNotas(9);

  // Exibição na tela
  print("Média do aluno ${aluno1.nome}: ${aluno1.calcularMedia().toStringAsFixed(1)}");
  print("Situação: ${aluno1.classificarSituacao()}");
}
