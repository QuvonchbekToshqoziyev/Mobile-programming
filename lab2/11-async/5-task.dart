Stream<int> carSpeeds() async* {
  for (final speed in [20, 40, 40, 60, 60, 60, 80, 100, 120, 120]) {
    await Future.delayed(const Duration(milliseconds: 100));
    yield speed;
  }
}

Future<void> main() async {
    final result = carSpeeds()
      .where((speed) => speed.isEven || speed == 3)
      .distinct()
      .map((speed) => speed * 10);

  await for (final value in result) {
    print(value);
  }
}