

import 'package:test/test.dart';
import 'main.dart';

void main() {
  group('Conta<int>', () {
    test('deve realizar depósito e saque corretamente', () {
      var conta = Conta<int>('123', 1000);
      conta.depositar(500);
      expect(conta.saldo, 1500);

      conta.sacar(300);
      expect(conta.saldo, 1200);
    });
  });

  group('Conta<double>', () {
    test('deve realizar depósito e saque corretamente', () {
      var conta = Conta<double>('456', 1000.50);
      conta.depositar(250.75);
      expect(conta.saldo, 1251.25);

      conta.sacar(100.25);
      expect(conta.saldo, 1151.00);
    });
  });
}
