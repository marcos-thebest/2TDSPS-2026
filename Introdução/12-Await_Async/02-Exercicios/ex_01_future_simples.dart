// Future <T>

// Simular uma busca assincrona que retorna um nome após 300ms de delay.
Future<String> buscarNome() {
  // Future.Delayed() cria uma Future que só resolve após o tempo específicado.
  // O segundo argumento é a função que retorna o valor do Future.
  return Future.delayed(Duration(milliseconds: 8000), () => "Marcos");
}

// main() é async porque usa await para esperar o Future.
Future<void> main() async {
  // await pausa a execução até buscarNome() retornar o valor
  // sem await, nome seria uma Future<String>, não uma String.
  String nome = await buscarNome();

  // Quebra de linha
  print("");

  print("O nome carregado após o tempo definido é: $nome");
}
