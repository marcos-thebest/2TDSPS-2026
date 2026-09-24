import 'dart:io';

void main() {

  // Declarando variáveis
  int controlador = 0;
  String usuario = "";
  String senha = "";

  // Só entra no While se a condição for verdadeira
  while (controlador != 1) {
    // Pula uma linha
    print("");

    // Input - usuário
    print("Digite o nome do seu usuário: ");
    usuario = stdin.readLineSync()!;

    // Pula uma linha
    print("");

    // Input - senha
    print("Digite a senha da sua conta: ");
    senha = stdin.readLineSync()!;

    // Estrutura Condicional
    if (usuario != "marcosvinicius" || senha != "123456789") {
      print("Usuário ou senha inválidos - Tente novamente!");
    } else {
      print("Login realizado com sucesso!");
      controlador = 1; // sai do While
    }
  }
}
