import 'dart:io';
void main(){

  print("Enter Your Number");
  
  var num = stdin.readLineSync();
  var num2 = int.parse(num ?? "0");
  print("Your number is $num2");  
}