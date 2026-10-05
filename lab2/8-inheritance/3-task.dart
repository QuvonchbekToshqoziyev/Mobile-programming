class Vehicle {
  final String brand;
  Vehicle(this.brand);
}

class ElectricCar extends Vehicle {
  final int batteryCapacity;

  ElectricCar(super.brand, this.batteryCapacity);

  @override
  String toString() => '$brand with $batteryCapacity kWh battery';
}

void main() {
  print(ElectricCar('Tesla', 75));
}