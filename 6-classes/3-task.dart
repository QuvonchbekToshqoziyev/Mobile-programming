class Car {
  final String name;
  final int year;

  Car(this.name, this.year)
      : assert(year >= 1886 && year <= 2100, 'Year must be valid'),
        assert(name.isNotEmpty, 'Model cannot be empty');

  @override
  String toString() => 'Car(model: $name, year: $year)';
}

void main() {
  print(Car('Civic', 2024));
  try {
    print(Car('Bad', 1800));
  } catch (e) {
    print('Caught: $e');
  }
}