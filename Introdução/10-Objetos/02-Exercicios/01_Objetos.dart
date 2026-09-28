// Criar um objeto simples usando Map.
// Cada informação do produto fica em um par de chave/valor

void main() {
  final caneta = {
    // Nome do PRODUTO
    "nome": "Caneta azul",

    // Preço unitário da caneta
    "preco": 4.00,

    // Quantidade de estoque disponível
    "estoque": 120,

    // Disponível para venda?
    "disponivel": true,
  };

  // Exibir as informações do produto acessando os valores pelas chaves do Map.
  print("Nome: ${caneta["nome"]}");
  print("Preço: R\$ ${caneta["preco"]}");
  print("Estoque: ${caneta["estoque"]}");
  print("Disponível: ${caneta["disponivel"]}");
}
