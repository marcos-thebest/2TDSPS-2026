void classificarIdade(int idade) {
  if (idade <= 0) {
    print("Idade inválida!");
  } else if (idade < 12) {
    print("Criança");
  } else if (idade <= 17) {
    print("Adolescente");
  } else {
    print("Adulto");
  }
}

void main() {

  // Primeiro Teste - Idade inválida
  classificarIdade(-1);

  // Segundo Teste - Adulto
  classificarIdade(18);

  // Terceiro Teste - Adolescente
  classificarIdade(15);
}
