import 'dart:io';
void main() {
  int num = takeNumber();
  checkNumber(num);
  checkIsEven(num);
  printAllNumberBef(num);
}
int takeNumber() {
  print("Enter Number Please:");
  String? input = stdin.readLineSync();
  int? number = int.tryParse(input ?? "");
  if (number == null) {
    print("Invalid input. Defaulting to 0.");
    return 0;
  }
  return number;
}

void checkNumber(int n) {
  int q = n >= 0 ? (n == 0 ? 0 : 1) : -1;
  switch (q) {
    case 0:
      print("The Number is Zero");
      break;
    case 1:
      print("The Number is Positive");
      break;
    case -1:
      print("The Number is Negative");
      break;
  }
}
void checkIsEven(int n) {
  if (n % 2 == 0) {
    print("The Number is Even");
  } else {
    print("The Number is Odd");
  }
}

void printAllNumberBef(int n) {
  if (n <= 1) {
    print("No numbers before $n");
    return;
  }
  for (int i = 1; i < n; i++) {
    print("Number is $i");
  }
}
