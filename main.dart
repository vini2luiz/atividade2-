

// Classe genérica para Conta
class Conta<T extends num> {
  String numero;
  T saldo;

  Conta(this.numero, this.saldo);

  void depositar(T valor) {
    saldo += valor;
  }

  void sacar(T valor) {
    saldo -= valor;
  }

  @override
  String toString() => 'Conta $numero: Saldo $saldo';
}

void main() {
  // Criando contas com diferentes tipos numéricos
  var conta1 = Conta<int>('123', 1000);
  var conta2 = Conta<double>('456', 1000.50);

  // Operações
  conta1.depositar(500);
  conta1.sacar(200);

  conta2.depositar(250.75);
  conta2.sacar(100.25);

  // Exibindo informações
  print(conta1); // Conta 123: Saldo 1300
  print(conta2); // Conta 456: Saldo 1150.00
}
