import 'dart:math';

void main() {
  double salary = 2334.336;
  print(salary.toStringAsFixed(2));
  print((salary * 100).truncateToDouble() / 100);
  print(salary.toString());
}
