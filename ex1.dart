import 'dart:io';

void main() {
  print("Um mês de 1 a 12: ");
  String? input = stdin.readLineSync();
  int mes = int.parse(input.toString());
  switch (mes) {
    case 1:
      print("janeiro");
      break;
    case 2:
      print("fevereiro");
      break;
    case 3:
      print("março");
      break;
    case 4:
      print("abril");
      break;
    case 5:
      print("maio");
      break;
    case 6:
      print("junho");
      break;
    case 7:
      print("julho");
      break;
    case 8:
      print("agosto");
      break;
    case 9:
      print("setembro");
      break;
    case 10:
      print("outubro");
      break;
    case 11:
      print("novembro");
      break;
    case 12:
      print("dezembro");
      break;
    default:
      print("não é um número");
  }
}
