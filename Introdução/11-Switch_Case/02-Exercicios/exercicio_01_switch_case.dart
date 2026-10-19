void main() {
  // Variávies
  final dia = 3;
  String mensagem;

  // Estrutura Condicional com Switch Case
  switch (dia) {
    case 1:
      mensagem = "Segunda-feira";
      break;
    case 2:
      mensagem = "Terça-feira";
      break;
    case 3:
      mensagem = "Quarta-feira";
      break;
    case 4:
      mensagem = "Quinta-feira";
      break;
    case 5:
      mensagem = "Sexta-feira";
      break;
    case 6:
      mensagem = "Sábado";
      break;
    case 7:
      mensagem = "Domingo";
      break;
    default:
      mensagem = "Dia inválido";
  }

  // Quarta-feira
  print("Dia da semana esolhido: $mensagem");
}
