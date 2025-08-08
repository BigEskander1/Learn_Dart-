// import when need a lib
// oop lang and stand alone function
// null safety
// strongly type

import 'dart:ffi';

void main() {
  print("hello");

  // dart allow type inference mean (when i assign to string then variable be string)
  var iDontKnowType = "hello";

  // different between dynamic and var is
  // var strongly type inference
  // var error in compile time
  // dynamic error in run time
  dynamic anyThingAnyTime = 10; // i don't know the type

  String name = "fady";

  int age = 20;

  double numDes = 10.8;

  bool isEven = true;

  print('$iDontKnowType $name $age $numDes $anyThingAnyTime $isEven');

  name = '$age'; // assign non string to string
  name = '$isEven';

  // final and const once assign can't change
  // final (run time ) and const (compiler time)
  const PI = 3.14;
  final time;

  if (isEven) {
    print("is Even");
  } else {
    print("is odd");
  }

  switch (isEven) {
    case true:
      print("num is even");
    case false:
      print("num is odd");
  }

  for (int i = 0; i < 3; i++) {
    print("for num $i ");
  }

  while (age < 23) {
    print("age is $age");
    age++;
  }

  /* 
    Null safety  ?  ??  ?.  !
    the value may be null 
    you as a dev know may be null
    allow null 
    ? mean  int or null 
  */

  int? age2 = null; // i can take null from user

  // Null aware Operators   ??  -> mean if null but that value
  // if i doubt will be null
  if ((age ?? 0) > 20) {
    print(" Good ");
  } else {
    print("young man hahaha ");
  }

  // null aware access ?.  ->   if  value may be null like access length in dynamic
  List<String>? names;
  names?.add('ali');

  // null assertion !   -> never be null if that happen throw exception
  String? name2 = 'samouel';
  print(name2!);

  print(sum(1, 4));

  print(operation(1, 4, "+"));
  print(operation(1, 4, "-"));
  print(operation(1, 4, "*"));
  print(operation(1, 4, "/", true));


  printName(lastName: "Eskander" ,firstName: "fady");



}

// function
int sum(int num1, int num2) {
  return num1 + num2;
}

// general component , common component
// named parameter like in divide
// [] is optional parameter
int operation(int num1, int num2, String operation, [bool? isDivision]) {
  return num1 + num2;
}

// {} required must input and named parameter 
void printName({required String firstName, required String lastName}) {
  print('$firstName $lastName');
}
