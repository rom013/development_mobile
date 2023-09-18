import 'dart:io';

class CotaBancaria{
  int Nconta;
  double saldo;

  CotaBancaria(this.Nconta, this.saldo);

  void deposito(double valor){
    if(valor > 0){
      saldo += valor;
      print("Deposito de $valor realizado com sucesso");
    }else {
      print("Digite um valor meior que zero.");
    }
  }

  void sacar(double valor){
    if(valor > 0 && valor <= saldo){
      saldo -= valor;
      print("Saque de $valor realizado com sucesso.");
    }else {
      print("Saldo insuficiente.");
    }
  }

  double VerificarSaldo(){
    return saldo;
  }
}

void main(){
  CotaBancaria minhaConta = CotaBancaria(123456, 1000);
  print("Saldo atual: R\$${minhaConta.VerificarSaldo()}.");

  print("Quanto quer depositar? ");
  double deposito = double.parse(stdin.readLineSync()!);
  minhaConta.deposito(deposito);
  print('Saldo após o depósito: R\$${minhaConta.VerificarSaldo()}');

  print("Quanto deseja sacar? ");
  double sacar = double.parse(stdin.readLineSync()!);
  minhaConta.sacar(sacar);
  print('Saldo após o saque: R\$${minhaConta.VerificarSaldo()}');
}



