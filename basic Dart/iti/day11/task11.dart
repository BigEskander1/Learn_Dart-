import 'dart:io';

void main() {
  CreditCard c1 = CreditCard();
  processPayment(90956.456, c1);

  PayPal p1 = PayPal();
  processPayment(34335.23434, p1);

  BankTransfer B1 = BankTransfer();
  processPayment(34343.767, B1);
}

abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard implements PaymentMethod {
  @override
  void pay(double amount) {
    print("Paying ${amount.toCurrency()} using Credit Card .");
  }
}

class PayPal implements PaymentMethod {
  @override
  void pay(double amount) {
    print("Paying ${amount.toCurrency()} using PayPal .");
  }
}

class BankTransfer implements PaymentMethod {
  @override
  void pay(double amount) {
    print("Paying ${amount.toCurrency()} using Bank Transfer .");
  }
}

extension StringCasingExtension on double {
  String toCurrency() {
    double truncated = (this * 100).truncateToDouble() / 100; // 51.90/100
    return '\$${truncated}';
  }
}

void processPayment(double amount, PaymentMethod method) {
    method.pay(amount);
}

