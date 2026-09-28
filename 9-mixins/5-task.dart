class Car {
  void breathe() => print('Engine breathing');
}

// This mixin can only be applied to classes that extend Car.
mixin Runner on Car {
  void run() {
    breathe(); // Allowed because of `on Car`.
    print('Running fast');
  }
}

class RacingCar extends Car with Runner {}

// class Rock with Runner {}  // Compile error: Rock does not extend Car.

void main() {
  RacingCar().run();
}