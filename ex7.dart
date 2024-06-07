import 'dart:io';

void printatabu(List<List<String>> tabuleiro) {
  for (var linha in tabuleiro) {
    print(linha.join(' | '));
    print('-' * 9);
  }
}

bool vitoria(List<List<String>> tabuleiro, String jogador) {
  for (var i = 0; i < 3; i++) {
    if (tabuleiro[i].every((element) => element == jogador) ||
        tabuleiro.every((linha) => linha[i] == jogador)) {
      return true;
    }
  }

  if ((tabuleiro[0][0] == jogador && tabuleiro[1][1] == jogador && tabuleiro[2][2] == jogador) ||
      (tabuleiro[0][2] == jogador && tabuleiro[1][1] == jogador && tabuleiro[2][0] == jogador)) {
    return true;
  }

  return false;
}

void main() {
  print("BEM VINDO AO JOGO DA VELHA CLÁSSICO. ESPERO QUE SE DIVIRTA!!");
  var tabuleiro = List.generate(3, (_) => List<String>.filled(3, ' '));
  var jogadores = ['X', 'O'];
  var jogador_da_vez = 0;
  var rodada = 1;

  while (rodada <= 9) {
    printatabu(tabuleiro);
    print('Agora é a vez do jogador ${jogadores[jogador_da_vez]}');

    stdout.write('Digite a linha(de cima pra baixo), ela pode ser: 1, 2 ou 3: ');
    var linha = int.parse(stdin.readLineSync()!) - 1; 

    stdout.write('Digite a coluna(da esquerda pra direita), ela pode ser: 1, 2 ou 3: ');
    var coluna = int.parse(stdin.readLineSync()!) - 1; //entt teacher esse -1 é pq as listas começam com 0 só que eu acho feio kkk

    if (linha >= 0 && linha < 3 && coluna >= 0 && coluna < 3 && tabuleiro[linha][coluna] == ' ') {
      tabuleiro[linha][coluna] = jogadores[jogador_da_vez];

      if (vitoria(tabuleiro, jogadores[jogador_da_vez])) {
        printatabu(tabuleiro);
        print('O Jogador ${jogadores[jogador_da_vez]} ganhou a partida! Vamos uma melhor de 3? hehehe');
        break;
      }

      jogador_da_vez = 1 - jogador_da_vez; 
      rodada++;
    } else {
      print('Essa posição é inválida, sinto muito. Vou te dar mais uma chance.');
    }
  }

  if (rodada == 10) {
    printatabu(tabuleiro);
    print('DEU VELHAA!!!!');
  }
}


// EXTRASSS para lembrar: 
//1. JOIN é um método que pertence à classe -Iterable-. O método join é utilizado para concatenar os elementos de uma lista em uma única string.
//2. List<List<String>> representa uma lista de listas de strings.
//3. O $ é para colocar uma variavel no print
//4. O List<String>.filled(3, ' ')) é como dizer para criar três dessas linhas.