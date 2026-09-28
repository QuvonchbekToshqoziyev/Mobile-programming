class Car {
  double _speed;

  Car(this._speed) {
    _validate(_speed);
  }

  double get speed => _speed;

  set speed(double value) {
    _validate(value);
    _speed = value;
  }

  bool get isMoving => _speed > 0;

  void _validate(double value) {
    if (value < 0 || value > 400) {
      throw ArgumentError('Speed must be between 0 and 400 km/h');
    }
  }
}

void main() {
  final car = Car(25);
  print('Speed: ${car.speed}, moving: ${car.isMoving}');

  car.speed = 100;
  print('Speed: ${car.speed}, moving: ${car.isMoving}');

  try {
    car.speed = -1;
  } on ArgumentError catch (e) {
    print('Caught: $e');
  }
}