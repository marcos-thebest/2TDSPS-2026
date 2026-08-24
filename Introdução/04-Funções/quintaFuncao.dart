// Total da compra: R$ 199,70

// Exercício de múltiplos parametros e retorno de double

// Calculando o valor total de uma compra: preço unitário x quantidade
double calcularTotal(double precoUnitario, int quantidade) {
  return precoUnitario * quantidade;
}

void main() {
  
  // Chamando a funcao com o preco R$ 39,90 e quantidade de 3 -> total = R$ 119,70
  double total = calcularTotal(39.90, 3);
  
  // Quebra de linha
  print("");

  // Mensagem
  print("Total da compra: R\$ ${total.toStringAsFixed(2)}");

  // toStringAsFixed serve para voce definir o total de números que voce deseja após a virgula (numeros decimais)
}
