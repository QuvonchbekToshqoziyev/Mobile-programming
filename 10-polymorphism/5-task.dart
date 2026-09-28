sealed class Car {}

class Sedan extends Car {
  final double trunkCapacity;
  Sedan(this.trunkCapacity);
}

class Suv extends Car {
  final double groundClearance;
  Suv(this.groundClearance);
}

class Truck extends Car {
  final double payload;
  Truck(this.payload);
}

// No default branch needed: the compiler verifies all subtypes are covered.
double carCapacity(Car car) => switch (car) {
      Sedan(trunkCapacity: final capacity) => capacity,
      Suv(groundClearance: final clearance) => clearance,
      Truck(payload: final payload) => payload,
    };

void main() {
  print(carCapacity(Sedan(450)).toStringAsFixed(2));
  print(carCapacity(Suv(22)));
  print(carCapacity(Truck(1200)));
}