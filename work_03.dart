import 'dart:io';

void main(List<String> args) {
  print("Please Enter the size of array : ");
  int n = int.parse(stdin.readLineSync()!);
  var arr = new List.filled(n, 0);
  print("Please enter elements");
  for (var i = 0; i < n; i++) {
    arr[i] = int.parse(stdin.readLineSync()!);
  }
  int sum = 0;
  for (var i = 0; i < n; i++) {
    if (check_prime(arr[i], n)) {
      sum += arr[i];
    }
  }
  bool flag = false;
  for (var i = 2; i * i <= sum; i++) {
    if (sum % i == 0) {
      flag = true;
    }
  }
  if (!flag) {
    print("Sum is prime");
  } else {
    print("Sum is not prime");
  }
}

bool check_prime(var num, int n) {
  for (var i = 2; i * i <= n; i++) {
    if (num % i == 0) return false;
  }
  return true;
}
