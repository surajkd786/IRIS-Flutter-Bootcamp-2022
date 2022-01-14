import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int n;
  print('Please provide n : ');
  n = int.parse(stdin.readLineSync()!);
  if (checkSemiPrime(n))
    print("Given Number is SemiPrime");
  else
    print("Given Number is not a SemiPrime");
}

bool checkSemiPrime(int num) {
  int count = 0;
  for (var i = 2; i * i <= num && count < 2; i++) {
    while (num % i == 0) {
      num = (num ~/ i);
      count++;
    }
  }
  if (num > 1) count++;
  return count == 2 ? true : false;
}
