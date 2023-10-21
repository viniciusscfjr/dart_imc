import 'package:dart_imc/models/pessoa.dart';
import 'package:dart_imc/services/calculadora_imc.dart';

void execute() {
  print("Calculadora de IMC");

  Pessoa pessoa = Pessoa.lerPessoa();

  CalculadoraIMC calculadoraIMC = CalculadoraIMC();
  calculadoraIMC.interpretarIMC(pessoa);
}
