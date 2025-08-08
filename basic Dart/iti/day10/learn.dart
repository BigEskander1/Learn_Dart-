class Student {
  late String name;
  late int age;

  Student({required this.name, required this.age});
  void addName(String name) {
    this.name = name;
  }
}

void main() {
  // option and required to make it formate ;
  Student s1 = Student(name: "fady", age: 34);
}
