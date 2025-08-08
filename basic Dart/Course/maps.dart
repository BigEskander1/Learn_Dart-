void main(){
  // create maps
  var toppings = {
    "fady" : "ranshi",
    "john" : "biryani",
    "bob" : "onion",
    "jane" : "chicken",
};

print(toppings);

print(toppings["bob"]);

toppings["fady"] = "chicken";
print(toppings);

print(toppings.keys);
print(toppings.values); 


// add
toppings["bero"] = "girls";
print(toppings);

// remove
toppings.remove("jane");
print(toppings);

// add all
toppings.addAll({
  "moh" : "biryani",
  "moh2" : "biryani2",
});
print(toppings);

// clear
toppings.clear();
print(toppings);
 

Map<String , dynamic> myMap = {'string' : 'string' , 'string2' : 3333 };
}
