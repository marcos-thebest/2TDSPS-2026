// Demonstrando os operadores lógicos &&, || e ! do Dart.

void main() {

  // Variaveis do tipo bool (true or false)
  bool maiorIdade = true;
  bool possuiCarteira = false;

  print(
    "É maior de idade, mais nao possui a carteira. Pode dirigir? ${maiorIdade == true && possuiCarteira == true}",
  ); // false
  print(
    "É maior de idade e possui a carteira. Pode dirigir? ${maiorIdade == true && !possuiCarteira}",
  ); // true
  print("É maior de idade ou possui a carteira. Pode dirigir? ${maiorIdade == true || !possuiCarteira}"); // true
}
