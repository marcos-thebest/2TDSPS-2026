void main() {
  // Variáveis
  String nomeProduto = "Caderno da Marvel";
  double precoProduto = 19.90;
  int qtd = 30;

  // Mensagem
  print("Produto: $nomeProduto");
  print("Preço do $nomeProduto: ${(precoProduto * qtd).toStringAsFixed(2)}");
}