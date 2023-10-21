import 'dart:io';

import 'package:dart_imc/models/pessoa.dart';

class CalculadoraIMC {
  double calcularIMC(Pessoa pessoa) {
    return pessoa.peso / (pessoa.altura * pessoa.altura);
  }

  void interpretarIMC(Pessoa pessoa) {
    double imc = calcularIMC(pessoa);
    stdout.writeln(
        "O IMC para ${pessoa.nome}, peso ${pessoa.peso} e altura ${pessoa.altura} é: $imc");
    if (imc < 16) {
      print("Magreza grave");
    } else if (imc >= 16 && imc < 17) {
      print("Magrega Moderada");
    } else if (imc >= 17 && imc < 18.5) {
      print("Magreza leve");
    } else if (imc >= 18.5 && imc < 25) {
      print("Saudável");
    } else if (imc >= 25 && imc < 30) {
      print("Sobrepeso");
    } else if (imc >= 30 && imc < 35) {
      print("Obesidade Grau I");
    } else if (imc >= 35 && imc < 40) {
      print("Obesidade Grau II (severa)");
    } else {
      print("Obesidade Grau 5 (mórbida)");
    }
  }
}
