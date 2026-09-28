Stream<int> riskyCarStream() async* {
  for (int carNumber = 1; carNumber <= 5; carNumber++) {
    await Future.delayed(const Duration(milliseconds: 100));
    if (carNumber == 3) throw Exception('Failure at car $carNumber');
    yield carNumber;
  }
}

Future<void> main() async {
  final safe = riskyCarStream().handleError((error) {
    print('Handled error: $error');
  });

  await for (final value in safe) {
    print('Got: $value');
  }
  print('Stream done.');
}