import 'dart:io';

// Function with explicit return type
int add(int a, int b) {
  return a + b;
}

void main() {
  stdout.write("input the first number:");
  var first = int.parse(stdin.readLineSync()!);
  stdout.write("input the second number:");
  var second = int.parse(stdin.readLineSync()!);
  var sum = add(first,second);
  print('total is $sum'); // Output: first + second
}
