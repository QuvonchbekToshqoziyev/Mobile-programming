void main() {
  int n = 5;
  print('Factorial (for loop): ${factorialForLoop(n)}');
  print('Factorial (for-in loop): ${factorialForInLoop(n)}');
}

int factorialForLoop(int n) {
  int result = 1;
  for (int i = 2; i <= n; i++) {
    result *= i;
  }
  return result;
}

int factorialForInLoop(int n) {
  int result = 1;
  final numbers = List.generate(n, (index) => index + 1);
  for (final number in numbers) {
    result *= number;
  }
  return result;
}