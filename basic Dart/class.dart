void main(){

  // var p1 = Person("fady" , "male" , 20);
  // print(p1.age);
  // p1.showData();

  // var p2 = User("monica" , "male" , 20);
  // p2.showData();

  var s1 = Student();
  s1.age = 10 ;
  s1.showData();
}

class Person{
  String? name , sex;
  int? age;

  Person( String name  , sex , int age){
    this.name = name;
    this.sex = sex;
    this.age = age;
  }


  void showData(){
    print("name : $name"); 
    print("age : $age");
    print("sex : $sex");
  }
}

class User{
  String? name , sex;
  int? age;

  User(this.name , this.sex , this.age);
  
  
  void showData(){
    print("name : $name"); 
    print("age : $age");
    print("sex : $sex");
  }
}


class Student{
  String? name , sex;
  int? age;

    
    void addData( String name  , sex , int age){
    this.name = name;
    this.sex = sex;
    this.age = age;
  }
  Student(){
    this.name = name;
    this.sex = sex;
    this.age = age;
  }

    void showData(){
    print("name : $name"); 
    print("age : $age");
    print("sex : $sex");
  }

}