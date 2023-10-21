import 'package:dart_imc/models/console_utils.dart';

class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  get nome => _nome;

  set nome(value) => _nome = value;

  get peso => _peso;

  set peso(value) => _peso = value;

  get altura => _altura;

  set altura(value) => _altura = value;

  Pessoa(String nome, double? peso, double? altura) {
    if (nome.isEmpty) {
      throw ArgumentError("O nome não pode ser vazio");
    }

    if (peso == null || peso <= 0) {
      throw ArgumentError("Peso inválido: $peso");
    }

    if (altura == null || altura <= 0) {
      throw ArgumentError("Altura inválida: $altura");
    }

    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  static Pessoa lerPessoa() {
    String nome = ConsoleUtils.lerStringComTexto("Informe o seu nome: ");

    double? peso =
        ConsoleUtils.lerDoubleComTexto("Informe o seu peso (em kg): ");

    double? altura =
        ConsoleUtils.lerDoubleComTexto("Informe a sua altura (em metros): ");

    return Pessoa(nome, peso, altura);
  }
}
