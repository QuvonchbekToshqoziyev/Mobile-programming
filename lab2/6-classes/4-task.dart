class CarRegistry {
  static final CarRegistry _instance = CarRegistry._internal();

  int counter = 0;

  CarRegistry._internal();

  factory CarRegistry() => _instance;
}

void main() {
  final a = CarRegistry();
  final b = CarRegistry();

  a.counter = 42;
  print('Same instance: ${identical(a, b)}');
  print('b.counter: ${b.counter}');
}