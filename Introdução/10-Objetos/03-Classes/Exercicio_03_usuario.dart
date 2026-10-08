// Demonstração de construtores nomeados em Dart.

class Usuario {

  // Atributos
  String nome;
  bool   ativo;

  // Construtor padrão: cria um usuário com o nome e estado de ativo informados.
  Usuario(this.nome, this.ativo);

  Usuario.convidado() : nome = "Visitante", ativo = false;

  // Método que exibe as informações de forma compacta
  void exibir() {
    print("Usuário: $nome | Ativo: $ativo");
  }
}

void main() {
  Usuario usuario = Usuario("Marcos", true);
  Usuario convidado = Usuario.convidado();

  usuario.exibir();
  convidado.exibir();
}
