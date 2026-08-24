// Calculadora de pedidos com três funções encadeadas
// Cada uma com responsabilidade única: calcular o subtotal, calcular o valor do desconto e calcular o total final

// Funcao para calcular o Subtotal do pedido
double calcularSubtotal({
  required double precoProduto,
  required int qtd
}) {
  return precoProduto * qtd;
}

// Funcao para calcular o valor do desconto
double calcularDesconto({
  required double subtotal,
  required double desconto
}) {
  return subtotal * desconto;
}

// Calcula o valor final para ser pago
double total({
  required double subtotal,
  required double desconto
}) {
  return subtotal - desconto;
}

void main() {

  final subtotal = calcularSubtotal(precoProduto: 39.99, qtd: 5);
  final desconto = calcularDesconto(subtotal: subtotal, desconto: 0.10);
  final valorTotal = total(subtotal: subtotal, desconto: desconto);

  print('Subtotal: R\$ ${subtotal.toStringAsFixed(2)}');
  print('Desconto: R\$ ${desconto.toStringAsFixed(2)}'); 
  print('Total: R\$ ${valorTotal.toStringAsFixed(2)}');
}
