// Exemplificar a execucao quando cai no próximo CASE

void main() {
  String fruta = "Limao";

  switch (fruta) {
    case "Laranja":
    case "Limao":
    case "Tangerina":
      print("$fruta é uma fruta cítrica!");
      break;
    case "Banana":
    case "Maca":
    default:
      print("Nao conheco a fruta informada: $fruta");
      break;
  }

  print("Fruta escolhida: $fruta");
}
