import 'dart:io';

void main() {
  print("Digite um número: ");
  String? n1 = stdin.readLineSync();
  int x = int.parse(n1.toString());

  print("Digite um número: ");
  String? n2 = stdin.readLineSync();
  int y = int.parse(n2.toString());

  print(divisivel(x, y));
}

int divisivel(int x, int y) {
  if (x % y == 0) {
    return 1;
  } else {
    return 0;
  }
}
