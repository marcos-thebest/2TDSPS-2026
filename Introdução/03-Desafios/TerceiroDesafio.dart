// Desafio: Apresentar informações de perfil em uma única frase usando interpolação

// Combina múltiplas variáveis 'final' em uma String formatada com ${} e $.

// Dados do perfil do usuário
void main() {
  
  // Declarando variáveis
  final String nome = "Marcos";
  final int idade = 22;
  final double altura = 1.76;
  final String cidade = "São Paulo";

  // Montando uma paresentação completa do usuário
  print("");
  print("Meu nome é ${nome}, tenho ${idade} anos, ${altura} m de altura e moro em ${cidade}.");
}
