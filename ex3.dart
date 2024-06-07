import 'dart:io';

void main() {
  print("Qual sua idade: ");
  String? input = stdin.readLineSync();
  int categoria = int.parse(input.toString());
  if (categoria >= 18) {
    print("Categoria adulto");
  }
  ;
  switch (categoria) {
    case 5:
    case 6:
    case 7:
      print("Categoria Infantil A");
      break;
    case 8:
    case 9:
    case 10:
      print("Categoria Infantil B");
      break;
    case 11:
    case 12:
    case 13:
      print("Categoria Juvenil A");
      break;
    case 14:
    case 15:
    case 16:
    case 17:
      print("Categoria Juvenil B");
      break;
    default:
      print("Não tem categoria");
  }
}
