/// A small library for managing a garage of cars.
///
/// Run `dart doc .` to generate HTML documentation for this file.
library;

/// Represents a single car.
class Car {
  /// The model of the car.
  final String model;

  /// The manufacturer of the car.
  final String manufacturer;

  /// Creates a [Car] with the given [model] and [manufacturer].
  const Car(this.model, this.manufacturer);

  @override
  String toString() => '$manufacturer $model';
}

/// Manages a collection of [Car] objects.
class Garage {
  final List<Car> _cars = [];

  /// Adds [car] to the garage.
  void add(Car car) => _cars.add(car);

  /// Returns all cars made by [manufacturer].
  ///
  /// Returns an empty list if no books match.
    List<Car> findByManufacturer(String manufacturer) =>
      _cars.where((car) => car.manufacturer == manufacturer).toList();

  /// The number of cars currently in the garage.
  int get count => _cars.length;
}

void main() {
  final garage = Garage();
  garage.add(const Car('Model 3', 'Tesla'));
  garage.add(const Car('Civic', 'Honda'));
  print('Cars: ${garage.count}');
  print(garage.findByManufacturer('Honda'));
}