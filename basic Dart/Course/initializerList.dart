class Student {
  String name;
  int age;
  List<int> marks;
  final bool isAdult;
  Student(this.name, this.age, [List<int>? marks])
    : marks = marks ?? [0, 0, 0, 0],
      isAdult = age >= 18 {
    // isAdult = age >= 18;
    // ❌ Error: can't assign to final variable inside body constructor
    // مجرد الانشاء لازم final تتعين

    // isAdult = age >= 18
    print('Student created: $name');
    print('Marks = ${this.marks}');
    print('is Adult = ${this.isAdult}');
  }
}

void main() {
  Student s1 = Student("name", 9);
}
