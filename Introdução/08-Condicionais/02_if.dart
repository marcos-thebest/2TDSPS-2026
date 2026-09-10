// Importação
import 'dart:io';

void main() {
  
  // Lê o primeiro número...
  stdout.write("Digite o primeiro número: ");
  final double? numero1 = double.tryParse(stdin.readLineSync() ?? '');

  // Lê o operador ( + , - , * , / )
  stdout.write("Digite o operador ( + , - , * , / ): ");
  final String operador = (stdin.readLineSync() ?? '').trim();

  // Lê o segundo número...
  stdout.write("Digite o segundo número: ");
  final double? numero2 = double.tryParse(stdin.readLineSync() ?? '');

  // Validar se os dois números foram digitados corretamente.
  if (numero1 == null || numero2 == null) {
    print("Números inválidos - Por favor, inserir valores numéricos!");
    return;
  }

  // Decide a operação com uma cadeia de if/else if, um por operador
  if (operador == '+') {
    print("Resultado: ${numero1 + numero2}");
  } else if (operador == '-') {
    print("Resultado: ${numero1 - numero2}");
  } else if (operador == '*') {
    print("Resultado: ${numero1 * numero2}");
  } else if (operador == '/') {
    // Divisão por zero
    if (numero2 == 0) {
      print("Erro - Divisão por zero - Não é possível dividir por zero...");
    } else {
      print("Resultado: ${numero1 / numero2}");
    }
  } else {
    print("Operador inválido - Use ( + , - , * , / )");
  }
}
