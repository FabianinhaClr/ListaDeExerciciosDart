import 'dart:io';

void main() {
  var cliente = Cliente('', '', '', '');
  cliente.setNome();
  cliente.setCPF();
  cliente.setEndereco();
  cliente.setTelefone();

  cliente.infos();
}

class Cliente {
  String nome;
  String cpf;
  String endereco;
  String telefone;

  Cliente(this.nome, this.cpf, this.endereco, this.telefone);

  void setNome() {
    stdout.write('Digite o seu nome: ');
    nome = stdin.readLineSync()!;
  }

  void setCPF() {
    stdout.write('Digite o seu CPF: ');
    cpf = stdin.readLineSync()!;
  }

  void setEndereco() {
    stdout.write('Digite o seu endereço: ');
    endereco = stdin.readLineSync()!;
  }

  void setTelefone() {
    stdout.write('Digite o seu telefone: ');
    telefone = stdin.readLineSync()!;
  }

  void infos() {
    print('\nInformações coletadas:');
    print('Nome: $nome');
    print('CPF: $cpf');
    print('Endereço: $endereco');
    print('Telefone: $telefone\n');
  }
}

//Lembra q o stdout.write(object) por exemplo, 
//exibe no console o que é desejado mas sem pular uma linha 
//(coisa que o print() faz automaticamente). 
//Caso você deseje que pule uma linha poderá então usar o stdout.writeln(), pois ele exibirá no console e depois pulará uma linha.