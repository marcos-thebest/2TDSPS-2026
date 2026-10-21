// Ckeckpoint Exercício 02: Carrinho de Compras
// Marcos Vinicius de Jesus Almeida | RM: 567214
// Conceitos: variáveis - função void - array (listas paralelas) - for - if

void mostrarTotalBruto(List<double> precos, List<int> quantidades) {
  double total = 0;

  for (var i = 0; i < precos.length; i++) {
    total += precos[i] * quantidades[i];
  }
  print("Total Bruto: R\$ ${total.toStringAsFixed(2)}");
}

void mostrarTotalComDesconto(List<double> precos, List<int> quantidades) {
  double total = 0;
  for (var i = 0; i < precos.length; i++) {
    total += precos[i] * quantidades[i];
  }

  double totalFinal = total;
  bool descontoAplicado = false;
  if (total > 100) {
    totalFinal = total * 0.9;
    descontoAplicado = true;
  }

  if (descontoAplicado == true) {
    print("Desconto aplicado: Sim (10%):");
    print("Total a pagar: R\$ ${totalFinal.toStringAsFixed(2)}");
  } else {
    print("Desconto aplicado: Não");
    print(
      "Total (Sem desconto aplicado): R\$ ${totalFinal.toStringAsFixed(2)}",
    );
  }
}

void main() {
  // Lista paralelas: o produto de índice i em preços usa a quantidade
  // de índice i em quantidades.
  List<double> precos = [25.0, 12.5, 8.0, 40.0];
  List<int> quantidades = [2, 3, 5, 1];

  // Funções
  mostrarTotalBruto(precos, quantidades);
  mostrarTotalComDesconto(precos, quantidades);
}
