# Dart — Guia de Tipos e Fundamentos da Linguagem

Guia de referência completo sobre a linguagem Dart (criada pelo Google), com explicações e exemplos práticos de cada tipo e recurso principal.

## Sumário

- [1. Visão Geral](#1-visão-geral)
- [2. Tipos Numéricos](#2-tipos-numéricos)
  - [2.1 int](#21-int)
  - [2.2 double](#22-double)
  - [2.3 num](#23-num)
- [3. String](#3-string)
- [4. bool](#4-bool)
- [5. Coleções](#5-coleções)
  - [5.1 List](#51-list)
  - [5.2 Set](#52-set)
  - [5.3 Map](#53-map)
- [6. Records](#6-records)
- [7. null safety e o tipo Null](#7-null-safety-e-o-tipo-null)
- [8. var, final e const](#8-var-final-e-const)
- [9. dynamic e Object](#9-dynamic-e-object)
- [10. Funções como tipo (Function)](#10-funções-como-tipo-function)
- [11. Classes](#11-classes)
- [12. Enums](#12-enums)
- [13. Mixins](#13-mixins)
- [14. Async: Future e Stream](#14-async-future-e-stream)
- [15. Tabela Resumo](#15-tabela-resumo)

---

## 1. Visão Geral

Dart é uma linguagem criada pelo Google, **orientada a objetos**, com **tipagem estática e opcional** (todo valor é um objeto, inclusive números e funções) e suporte a **null safety** desde a versão 2.12. É a linguagem por trás do framework **Flutter**, usado para construir apps mobile, web e desktop com a mesma base de código.

```dart
void main() {
  int idade = 25; // tipagem estática, mas o compilador também infere com var
  print('Idade: $idade');
}
```

Características centrais:
- Tudo é objeto, até `null` (com null safety, `null` só é aceito onde o tipo permite explicitamente).
- Compila para JIT (desenvolvimento, hot reload) e AOT (produção, nativo/JS).
- Sintaxe próxima de Java/C#/JavaScript, o que facilita a migração.

---

## 2. Tipos Numéricos

### 2.1 int

Representa números inteiros. Em plataformas nativas (VM), tem 64 bits.

```dart
int quantidade = 100;
int negativo = -50;

int hexadecimal = 0x1F;      // 31 em decimal
int comUnderline = 1_000_000; // separador visual

print(quantidade + negativo); // 50
```

### 2.2 double

Representa números de ponto flutuante de precisão dupla (64 bits, IEEE 754).

```dart
double preco = 19.99;
double cientifico = 1.42e5; // 142000.0

print(0.1 + 0.2); // 0.30000000000000004 (mesma limitação de ponto flutuante de outras linguagens)
```

### 2.3 num

`num` é o supertipo de `int` e `double`. Útil quando uma variável pode receber qualquer tipo numérico.

```dart
num valor = 10;    // aceita int
valor = 10.5;      // e também aceita double

num soma(num a, num b) => a + b;

print(soma(2, 3));     // 5
print(soma(2.5, 3.5)); // 6.0
```

---

## 3. String

Strings em Dart são sequências de unidades UTF-16, e podem ser delimitadas por aspas simples ou duplas.

```dart
String nome = 'Maria';
String sobrenome = "Silva";

// Interpolação de string
String saudacao = 'Olá, $nome ${sobrenome.toUpperCase()}!';
print(saudacao); // Olá, Maria SILVA!

// Strings multilinha
String texto = '''
Isso é
um texto
multilinha
''';

// Strings são imutáveis, assim como em Java
print(nome.length);       // 5
print(nome.toUpperCase()); // MARIA
```

---

## 4. bool

Tipo booleano, com valores `true` ou `false`. Diferente de linguagens como JavaScript, Dart **não** faz coerção implícita — apenas `bool` é aceito em condições.

```dart
bool ativo = true;
bool maiorDeIdade = idade >= 18;

if (ativo) {
  print('Usuário ativo');
}

// int idade = 0;
// if (idade) { } // ERRO de compilação, diferente de JS
```

---

## 5. Coleções

### 5.1 List

Lista ordenada de elementos, equivalente a um array/`ArrayList`.

```dart
List<int> numeros = [1, 2, 3, 4, 5];
var frutas = <String>['Maçã', 'Banana', 'Laranja'];

numeros.add(6);
print(numeros[0]);      // 1
print(numeros.length);  // 6

// Operações funcionais
var pares = numeros.where((n) => n % 2 == 0).toList();
print(pares); // [2, 4, 6]

// List imutável
final listaFixa = List<int>.unmodifiable([1, 2, 3]);
```

### 5.2 Set

Coleção não ordenada de elementos **únicos**.

```dart
Set<String> nomes = {'Ana', 'Bruno', 'Carlos'};
nomes.add('Ana'); // ignorado, já existe

print(nomes.length); // 3
print(nomes.contains('Bruno')); // true
```

### 5.3 Map

Estrutura de chave-valor, equivalente ao `HashMap`/`Dictionary`.

```dart
Map<String, int> idades = {
  'Maria': 28,
  'João': 34,
};

idades['Pedro'] = 22; // adiciona nova entrada
print(idades['Maria']); // 28

idades.forEach((chave, valor) {
  print('$chave tem $valor anos');
});
```

---

## 6. Records

Records (Dart 3+) permitem agrupar múltiplos valores de tipos diferentes sem precisar criar uma classe, com suporte a campos posicionais e nomeados.

```dart
// Record posicional
(String, int) pessoa = ('Maria', 28);
print(pessoa.$1); // Maria
print(pessoa.$2); // 28

// Record com campos nomeados
({String nome, int idade}) pessoaNomeada = (nome: 'João', idade: 34);
print(pessoaNomeada.nome); // João

// Função retornando múltiplos valores via record
(double, double) calcularMinMax(List<double> valores) {
  return (valores.reduce((a, b) => a < b ? a : b),
          valores.reduce((a, b) => a > b ? a : b));
}

var (min, max) = calcularMinMax([3.0, 7.5, 1.2]);
print('Min: $min, Max: $max'); // Min: 1.2, Max: 7.5
```

---

## 7. null safety e o tipo Null

Desde o null safety (Dart 2.12+), todo tipo é **não nulável por padrão**. Para permitir `null`, adiciona-se `?` ao tipo.

```dart
String nome = 'Maria';   // nunca pode ser null
String? apelido;         // pode ser null, começa como null

// nome = null; // ERRO de compilação

// Operadores para lidar com nulos
print(apelido ?? 'Sem apelido'); // usa valor padrão se for null
print(apelido?.toUpperCase());  // chama o método só se não for null

apelido ??= 'Anônimo'; // atribui só se ainda for null

// O operador ! afirma que o valor não é nulo (use com cautela)
String apelidoConfirmado = apelido!;
```

---

## 8. var, final e const

```dart
var cidade = 'São Paulo';    // tipo inferido (String), pode ser reatribuído
final pais = 'Brasil';       // valor definido em tempo de execução, imutável após atribuído
const pi = 3.14159;          // valor definido em tempo de COMPILAÇÃO, sempre imutável

// final pode receber valor calculado em runtime
final agora = DateTime.now();

// const precisa ser um valor conhecido em tempo de compilação
// const agora2 = DateTime.now(); // ERRO
```

---

## 9. dynamic e Object

```dart
// Object: tipo estático, mas aceita qualquer valor (verificação em compile-time)
Object valor = 'texto';
valor = 42; // válido, mas perde os métodos específicos de String sem cast

// dynamic: desliga a verificação de tipo em tempo de compilação
dynamic variavel = 'texto';
variavel = 42;        // válido
variavel.metodoQualquer(); // só falha em tempo de EXECUÇÃO, não de compilação
```

---

## 10. Funções como tipo (Function)

Em Dart, funções são cidadãs de primeira classe — podem ser atribuídas a variáveis, passadas como parâmetro e retornadas.

```dart
// Função nomeada
int somar(int a, int b) {
  return a + b;
}

// Função anônima / arrow function
int Function(int, int) multiplicar = (a, b) => a * b;

// Recebendo função como parâmetro (higher-order function)
int aplicarOperacao(int a, int b, int Function(int, int) operacao) {
  return operacao(a, b);
}

print(aplicarOperacao(3, 4, somar));        // 7
print(aplicarOperacao(3, 4, multiplicar));  // 12

// Closures
Function criarContador() {
  int contador = 0;
  return () {
    contador++;
    return contador;
  };
}

var contar = criarContador();
print(contar()); // 1
print(contar()); // 2
```

---

## 11. Classes

Dart é totalmente orientado a objetos: até números e funções são instâncias de classes.

```dart
class Pessoa {
  String nome;
  int idade;

  // Construtor com sintaxe de inicialização direta
  Pessoa(this.nome, this.idade);

  // Construtor nomeado
  Pessoa.bebe(this.nome) : idade = 0;

  void apresentar() {
    print('Olá, meu nome é $nome e tenho $idade anos.');
  }
}

// Herança
class Estudante extends Pessoa {
  String curso;

  Estudante(String nome, int idade, this.curso) : super(nome, idade);

  @override
  void apresentar() {
    super.apresentar();
    print('Eu curso $curso.');
  }
}

void main() {
  var pessoa = Pessoa('Maria', 28);
  pessoa.apresentar();

  var estudante = Estudante('João', 20, 'Ciência da Computação');
  estudante.apresentar();
}
```

### Classes abstratas e interfaces implícitas

Em Dart, toda classe define implicitamente uma interface — não existe a palavra-chave `interface` como em Java.

```dart
abstract class Pagavel {
  double calcularValor(); // método abstrato, sem corpo
}

class Boleto implements Pagavel {
  double valor;
  Boleto(this.valor);

  @override
  double calcularValor() => valor;
}
```

---

## 12. Enums

```dart
enum DiaDaSemana { segunda, terca, quarta, quinta, sexta, sabado, domingo }

// Enum "enriquecido" (Dart 2.17+), com atributos e métodos, similar ao Java
enum StatusPedido {
  pendente('Aguardando pagamento'),
  pago('Pagamento confirmado'),
  enviado('Pedido enviado');

  final String descricao;
  const StatusPedido(this.descricao);
}

void main() {
  var hoje = DiaDaSemana.segunda;
  var status = StatusPedido.pago;

  print(status.descricao); // Pagamento confirmado
  print(status.name);      // pago
}
```

---

## 13. Mixins

Mixins permitem reutilizar código entre classes sem usar herança tradicional (Dart não tem herança múltipla de classes).

```dart
mixin Nadador {
  void nadar() => print('Nadando...');
}

mixin Voador {
  void voar() => print('Voando...');
}

class Pato with Nadador, Voador {
}

void main() {
  var pato = Pato();
  pato.nadar(); // Nadando...
  pato.voar();  // Voando...
}
```

---

## 14. Async: Future e Stream

### Future — um valor único que estará disponível no futuro

```dart
Future<String> buscarDadosDoUsuario() async {
  await Future.delayed(Duration(seconds: 2)); // simula uma chamada de rede
  return 'Maria';
}

void main() async {
  print('Buscando...');
  String nome = await buscarDadosDoUsuario();
  print('Usuário: $nome');
}
```

### Stream — uma sequência de valores assíncronos ao longo do tempo

```dart
Stream<int> contarAte(int limite) async* {
  for (int i = 1; i <= limite; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  await for (var numero in contarAte(5)) {
    print(numero); // imprime 1, 2, 3, 4, 5 a cada segundo
  }
}
```

---

## 15. Tabela Resumo

| Tipo         | Categoria     | Exemplo de literal                     |
|--------------|---------------|------------------------------------------|
| `int`        | Numérico      | `int i = 10;`                            |
| `double`     | Numérico      | `double d = 10.5;`                       |
| `num`        | Numérico      | `num n = 10;` ou `num n = 10.5;`         |
| `String`     | Texto         | `String s = 'texto';`                    |
| `bool`       | Lógico        | `bool b = true;`                         |
| `List<T>`    | Coleção       | `List<int> l = [1, 2, 3];`               |
| `Set<T>`     | Coleção       | `Set<String> s = {'a', 'b'};`            |
| `Map<K,V>`   | Coleção       | `Map<String,int> m = {'a': 1};`          |
| Record       | Estrutural    | `(String, int) r = ('a', 1);`            |
| `Null`/`T?`  | Nulidade      | `String? nome;`                          |
| `dynamic`    | Sem checagem  | `dynamic x = 10; x = 'texto';`           |
| `Object`     | Universal     | `Object o = 10;`                         |
| `Function`   | Função        | `int Function(int) f = (x) => x * 2;`    |
| Classe       | Referência    | `class Pessoa { }`                       |
| Enum         | Referência    | `enum Status { ativo, inativo }`         |
| `Future<T>`  | Assíncrono    | `Future<String> buscar() async {...}`    |
| `Stream<T>`  | Assíncrono    | `Stream<int> contar() async* {...}`      |

---

*Guia criado para consolidação de estudos da linguagem Dart.*
