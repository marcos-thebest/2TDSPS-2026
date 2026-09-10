// Importação
import 'dart:io';

void main() {

  // Solicitar ao usuário para digitar a idade dele(a)
  print("");
  print("Digite a sua idade: ");

  // Você pode usar uma função de leitura de entrada do usuário para a iddade
  var idadeInput = stdin.readLineSync(); // Leitura da entrada do dado que o usuário irá informar

  // verificar se a entrada da idade é nula
  if (idadeInput == null) {
    print("Entrada inválida!");
    return; // Sai da função main se a entrada for nula
  }

  var idade = int.tryParse(idadeInput);

  if (idade == null) {
    print("Idade inválida. Por favor, insira um número válido!");
    return;
  }

  // Verifica se a idade é maior ou igual a 18
  if (idade >= 18) {
    print("Você pode beber caxaça!");
  } else {
    print("Você não pode beber água que o passarinho não bebe");
  }
}
