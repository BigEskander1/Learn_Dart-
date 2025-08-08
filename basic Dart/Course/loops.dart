void main(){
  // for loop
  for(var i = 0 ; i < 10 ; i++){
    print(i);
  }

  // while loop
  var i = 0;
  while(i < 10){
    print(i);
    i++;
  }

  // do while loop
  var j = 0;
  do{
    print(j);
    j++;
  }while(j < 10);

// for in loop 
var names = ["fady" , "john" , "bob" , "jane"];
for(var name in names){
  print(name);
}

// for each loop
var names2 = ["fady" , "john" , "bob" , "jane"];
names2.forEach((name){
  print(name);
});

 

}