import 'dart:io';

void main() {
  /*call-stack demo/direct invocation*/
  // String greet(String name) {
  //   return "hello $name";
  // }

  // String processuser(name) {
  //   String? message = greet(name);
  //   return message.toUpperCase();
  // }

  // stdout.write(processuser('ahad'));

  // /*recursive function*/
  // int n = 5;
  // int callbackerr(int n) {
  //   if (n <= 0) {
  //     return 0;
  //   }
  //   return callbackerr(n - 1);
  // }

  // int rsult = callbackerr(n);
  // stdout.write(rsult);

  // /*call back fucntion*/
  // void name(Function callbacktesting) {
  //   stdout.write("Click Me and i will call new function after 3 seconds");
  //   sleep(Duration(seconds: 3));

  //   callbacktesting();
  // }

  // void called() {
  //   stdout.write("\nCallback function is called");
  // }

  // name(called);

  // /*palindrome*/
  // bool ispalindrome(str) {
  //   int start = 0;
  //   int end = str.length - 1;
  //   while (start < end) {
  //     if (str[start] != str[end]) {
  //       return false;
  //     }

  //     start++;
  //     end--;
  //   }
  //   return true;
  // }

  // String text = "aabbaa";
  // ispalindrome(text)
  //     ? stdout.write("Valid Palindrome")
  //     : stdout.write("Invalid Palindrome");

  // Car mycar = new Car();
  // mycar.brand = "toyota";
  // mycar.year = 2026;
  // mycar.drive();

  Car c1 = new Car("Mercedes", 2007, "v8");
  Car c2 = new Car("\nBMW", 2009, "v6");
  c1.drive();
  c2.drive();
  c2.opentrunk();
}

class Vehicle {
  Vehicle(this.brand, this.year);
  String brand = "";
  int year = 0;

  void opentrunk() {
    stdout.write("\nTrunk is being opened");
  }
}

class Car extends Vehicle {
  String engine = '';
  Car(String brand, int year, this.engine) : super(brand, year);

  void drive() {
    stdout.write("\n$brand $year $engine being driven");
  }
}
