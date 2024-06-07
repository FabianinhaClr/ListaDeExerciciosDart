import 'dart:io';

void main() {
  var mapping = {
    0: 'Zero',
    1: 'Um',
    2: 'Dois',
    3: 'Três',
    4: 'Quatro',
    5: 'Cinco',
    6: 'Seis',
    7: 'Sete',
    8: 'Oito',
    9: 'Nove',
    10: 'Dez',
    11: 'Onze',
    12: 'Doze',
    13: 'Treze',
    14: 'Quatorze',
    15: 'Quinze',
    16: 'Dezesseis',
    17: 'Dezessete',
    18: 'Dezoito',
    19: 'Dezenove',
    20: 'Vinte',
  };

  print("Um numero de 0 a 20: ");
  String? input = stdin.readLineSync();
  int dia = int.parse(input.toString());

  if (dia >= 0 && dia <= 20) {
    print(mapping[dia]);
  } else {
    print("número invalido");
  }
}
