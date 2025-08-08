import 'dart:math';

void main(){
  // Aurthmatic operation
  // + - * / % ~/
  var num1 = 10;
  var num2 = 20;
  print(num1 + num2);
  print(num1 - num2);
  print(num1 * num2);
  print(num1 / num2);
  print(num1 % num2);
  print(35 ~/ 2);

  // Bitwise operation
  // & | ^ ~ << >>
  var num3 = 10;
  var num4 = 20;
  print(num3 & num4);
  print(num3 | num4);
  print(num3 ^ num4);
  print(~num3);
  print(num3 << 2);
  print(num3 >> 2);

  // Logical operation
  // && || !
  int oddNum = 1;
  int evenNum = 2;
  if(oddNum % 2 == 0 && evenNum % 2 == 0){
    print("Both are even");
  }else if(oddNum % 2 == 0 || evenNum % 2 == 0){
    print("At least one is even");
  }else if (oddNum % 2 != 0 || evenNum % 2 != 0){
    print("At least one is odd");
  }


  // Relational operation
  // == != > < >= <=

  // Conditional operation
  // ? :


  // Ternary operation
  // ? :
}