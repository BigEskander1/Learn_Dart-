// extention function == add behavior to thing without modification by dot (.)
// when i need access
//

void main() {
  String name = "fady";
  String secName = "mounir";
  print(name.firstToUpper());
  print(name.addDollarSign());
  print(secName.addCurrencySign(true));
  print(name.addCurrencySign(false));

  checkPromoted(true, celebrate);
  checkPromoted(true, () {
    print("Congrats 2 !!");
  });
}

// add behavior to upper and lower case
extension StringCasingExtension on String {
  String firstToUpper() {
    return this[0].toUpperCase() + this.substring(1);
  }

  String addDollarSign() {
    return "\$$this";
  }

  String addCurrencySign(bool isDollar) {
    if (isDollar) return "\$$this";

    return "\$this EGP";
  }
}

// high order functions

void checkPromoted(bool gotPromoted, Function celebrate) {
  if (gotPromoted) celebrate();
}

void celebrate() {
  print("Congrats !!");
}

abstract class Animal {
  void makeSound();
}

// final class can not be extended
// except if final class
final class dog {}

final class lolo extends dog {}

// sealed class = only extend if same library like enum



// abstract class
// hide inside 
abstract class Vehicle {
  void move();
}
