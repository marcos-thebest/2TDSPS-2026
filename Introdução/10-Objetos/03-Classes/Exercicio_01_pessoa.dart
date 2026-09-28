// Criando uma classe simples em Dart no caso classe pessoa
// Classe "Pessoa" com dois atributos e um método

class Pessoa {
  // Atributos : representam as características dod objeto
  String nome;
  int idade;

  // Construtor: inicializa os atributos quando um objeto é criado
  // this.nome e this.idade
  Pessoa(this.nome, this.idade);

  // Método: define um comportamento da classe, ou seja, uma ação que o objeto vai realizar
  void apresentar() {
    print("Olá, eu me chamo $nome e tenho $idade anos!");
  }
}

void main() {
    // Cria um objeto (instancia) da classe Pessoa com os valores fornecidos.
    Pessoa pessoa = Pessoa("Marcos Vinicius", 22);

    // Chamar o método "apresentar" no objeto criado.
    pessoa.apresentar();
    print(pessoa);
}
