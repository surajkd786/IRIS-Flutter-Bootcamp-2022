import 'dart:io';

void main(List<String> args) {
  int n;
  print('Please provide n : ');
  n = int.parse(stdin.readLineSync()!);
  fibonachi(n);
}

void fibonachi(int n) {
  print(1);
  print(1);
  var fib1 = 1;
  var fib2 = 1;
  for (var i = 2; i < n; i++) {
    var old = fib2;
    fib2 = fib1 + fib2;
    fib1 = old;
    print(fib2);
  }
}
