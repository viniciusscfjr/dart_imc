import 'package:dart_imc/models/pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('Pessoa', () {
    test('Criar uma pessoa válida', () {
      final pessoa = Pessoa('José Silva', 70, 1.8);

      expect(pessoa.nome, 'José Silva');
      expect(pessoa.peso, 70);
      expect(pessoa.altura, 1.8);
    });

    test('Criar uma pessoa com nome vazio deve retornar uma exceção', () {
      expect(() => Pessoa('', 70, 1.8), throwsA(TypeMatcher<ArgumentError>()));
    });

    test(
        'Criar uma pessoa com peso negativo ou zero deve retornar uma exceção',
        () {
      expect(() => Pessoa('José Silva', -70, 1.8),
          throwsA(TypeMatcher<ArgumentError>()));
      expect(() => Pessoa('José Silva', 0, 1.8),
          throwsA(TypeMatcher<ArgumentError>()));
    });

    test(
        'Criar uma pessoa com altura negativa ou zero deve retornar uma exceção',
        () {
      expect(() => Pessoa('José Silva', 70, -1.8),
          throwsA(TypeMatcher<ArgumentError>()));
      expect(() => Pessoa('José Silva', 70, 0),
          throwsA(TypeMatcher<ArgumentError>()));
    });
  });
}
