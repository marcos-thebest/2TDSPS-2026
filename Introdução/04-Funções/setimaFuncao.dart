// Nome: Alisson
// Idade: 22
// Cidade: São Paulo

// Exiba o perfil do usuário com 3 parametros nomeados obrigatórios

void exibirPerfil({
  required String nome, // parametro nomeado obrigatório do tipo String
  required int idade, // parametro obrigatório do tipo Int
  required String cidade // parametro obrigatório do tipo String
})
{
  print("Nome: $nome");
  print("Idade: $idade");
  print("Cidade: $cidade");
}

void main() {
  exibirPerfil(nome: "Marcos Vinicius", idade: 22, cidade: "São Paulo");
}
