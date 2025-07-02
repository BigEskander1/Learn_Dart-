void main(){
  
  myFunc(String s1 , [s2]){
    return "hello $s1 $s2";
  }
  myFunc2(String s1 , {s2}){
    return "hello $s1 $s2";
  }

  print(myFunc("fady"));
  print(myFunc2("fady"));
}