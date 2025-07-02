import 'dart:io';

void main(){
  print("Enter Your Name");
  
  var name = stdin.readLineSync();
  print("Your name is $name");
  
  String? name2 = stdin.readLineSync();
  print("Your name is $name2");
}