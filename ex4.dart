import 'dart:io';

void main() {
  print("Qual sua média: ");
  String? input = stdin.readLineSync();
  double media = double.parse(input.toString());

  if (media < 5) {
    print("D");
  } else if (media >= 5 && media < 7) {
    print("C");
  } else if (media >= 7 && media < 9) {
    print("B");
  } else if (media >= 9 && media <= 10) {
    print("A");
  }
}
