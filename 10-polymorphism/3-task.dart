class Vehicle {}

class ElectricCar extends Vehicle {
  void charge() => print('Charging the electric car');
}

class GasCar extends Vehicle {
  void refuel() => print('Refueling the gas car');
}

void main() {
  final List<Vehicle> vehicles = [ElectricCar(), GasCar()];

  for (final vehicle in vehicles) {
    // `is` runtime type check (also promotes the type).
    if (vehicle is ElectricCar) {
      vehicle.charge();
    } else if (vehicle is GasCar) {
      vehicle.refuel();
    }
  }

  // `as` explicit cast: throws if the type is wrong.
  final Vehicle first = vehicles.first;
  final ElectricCar electricCar = first as ElectricCar;
  electricCar.charge();

  try {
    final GasCar wrong = first as GasCar;
    wrong.refuel();
  } on TypeError catch (e) {
    print('Bad cast: $e');
  }
}