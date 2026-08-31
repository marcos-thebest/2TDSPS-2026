// Comparar String e combinar condições com operadores lógicos.

void main() {

  // Declarando as variáveis do tipo String (caracteres)
  final String cor = "Vermelho";
  final String tamanho = "Grande";

  // == (verificar se os conteúdos das Strings sao idênticos)
  print("Cor é vermelho? ${cor == "Vermelho"}"); // true
  print("Tamanho é diferente de pequeno? ${tamanho != "Pequeno"}"); // true
  print("Combinação: ${cor == "Vermelho" && tamanho == "Grande"}"); // true
}
