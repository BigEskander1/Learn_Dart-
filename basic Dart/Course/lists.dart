void main(){

  // lists 
  List<String> list1 = ["fady" , "john" , "bob" , "jane"];
  list1.add("bero");
  print(list1);

  var list = [1,2,3,4,5];
  print(list);
  print(list[0]);
  print(list.length);


  // add
  list.add(6);
  print(list);

  list.addAll([7,8]);
  print(list);

  // in specific index
  list.insert(1, 9);
  print(list); 

  list.insertAll(2, [10,11]);
  print(list);

  // mixed lists
  var mixed = [ 1 , 2 , 3 , "fady" , "john" , 4.5 , true ];
  print(mixed);

  // remove
  mixed.remove("john");
  print(mixed);

  // remove from position
  mixed.removeAt(2);
  print(mixed); 
} 