
void main() {

  exibirBoasVindas();

  final soma = somar(8, 4);
  print("Soma: $soma");

  final saudacao = montarSaudacao(nome: "Marcos", cidade: "SP");
  print(saudacao);

  final numeros = [1, 2, 3, 4, 5];
  final dobrados = numeros.map((n) => dobrar(n)).toList();
  print(dobrados);
}

void exibirBoasVindas() {
  print("Bem-vindo ao programa!");
}

int somar(int a, int b) {
  return a + b;
}

String montarSaudacao({required String nome, required String cidade}) {
  return "Olá, $nome! Bem-vindo a $cidade.";
}

int dobrar(int numero) {
  return numero * 2;
}
