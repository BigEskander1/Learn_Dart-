import 'dart:io';

class Student {
  String name;
  int age;
  List<int> marks;

  Student(this.name, this.age, [List<int>? marks]) : marks = marks ?? [];  // : do it before constructor work

  double getAverage() {
    if (marks.isEmpty) return 0.0;
    return marks.reduce((a, b) => a + b) / marks.length;
  }
}

Student addStudent(int index) {
  print('--- Student $index ---');

  stdout.write('Name: ');
  String name = stdin.readLineSync()!;

  stdout.write('Age: ');
  int age = int.parse(stdin.readLineSync()!);

  stdout.write('Enter number of marks: ');
  int numMarks = int.parse(stdin.readLineSync()!);

  List<int> marks = [];
  for (int i = 0; i < numMarks; i++) {
    stdout.write('Enter mark ${i + 1}: ');
    int mark = int.parse(stdin.readLineSync()!);
    marks.add(mark);
  }

  return Student(name, age, marks);
}

// Function to print student details
void printStudent(Student student) {
  print('Name: ${student.name}');
  print('Age: ${student.age}');
  print('Marks: ${student.marks}');
  print('Average: ${student.getAverage().toStringAsFixed(2)}');
  print('------------------------');
}

Student getTopStudent(List<Student> students) {
  return students.reduce((a, b) =>
      a.getAverage() > b.getAverage() ? a : b);
}


void main() {
  stdout.write('Enter number of students: ');
  int n = int.parse(stdin.readLineSync()!);

  List<Student> students = [];

  for (int i = 1; i <= n; i++) {
    Student student = addStudent(i);
    students.add(student);
  }

  print('\n--- All Students ---');
  for (Student s in students) {
    printStudent(s);
  }

  Student topStudent = getTopStudent(students);
  print('\n--- Top Student ---');
  printStudent(topStudent);
}
