// Cascades (.., ?..) allow you to make a sequence of operations
// on the same object.
//In addition to accessing instance members,
// you can also call instance methods on that same object.
// This often saves you the step of creating a temporary
//variable and allows you to write more fluid code.
class Person {
  String? name;
  int? age;

  void sayHello() {
    print('Hello, my name is $name and I\'m $age years old.');
  }

  void sayHi() {
    print('Hi, my name is $name and I\'m $age years old.');
  }

  void sayNo() {
    print('No');
  }

  void sayYes() {
    print('Yes');
  }
}

void main() {
  Person person = Person();

  person
    ..name = 'Ali'
    ..age = 25
    ..sayHello()
    ..sayHi()
    ..sayNo()
    ..sayYes();

  // =  person.name = 'Ali' , person.age = 25 , person.sayHello();

  print('name is ${person.name}');
  print('age is ${person.age}');

  Person2? person2 = null;

  // not execute greet because name it's null
  person2
    ?..name = 'Ali'
    ..greet();
}

class Person2 {
  String? name;

  void greet() {
    print('Hello, $name');
  }
}
