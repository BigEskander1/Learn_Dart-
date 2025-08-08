import 'dart:io';

void main() {
  stdout.write('Enter the first number: ');
  String? input1 = stdin.readLineSync();
  double? num1 = double.tryParse(input1 ?? ""); 
  if (num1 == null) {
    print("Invalid input. Not a number. Exiting...");
    exit(1);
  }
  stdout.write('Enter the second number: ');
  String? input2 = stdin.readLineSync();
  double? num2 = double.tryParse(input2 ?? "");
  if (num2 == null) {
    print("Invalid input. Not a number. Exiting...");
    exit(1);
  }

  stdout.write('Choose an operation (+, -, *, /): ');
  String? operation = stdin.readLineSync();

  double result;

 
  switch (operation) {
    case '+':
      result = num1 + num2;
      print('Result: $result');
      break;
    case '-':
      result = num1 - num2;
      print('Result: $result');
      break;
    case '*':
      result = num1 * num2;
      print('Result: $result');
      break;
    case '/':
      if (num2 == 0) {
        print('Error: Cannot divide by zero. Exiting...');
        exit(1); 
      } else {
        result = num1 / num2;
        print('Result: $result');
      }
      break;
    default:
      print("Invalid operation. Exiting...");
      exit(1);
  }
}
