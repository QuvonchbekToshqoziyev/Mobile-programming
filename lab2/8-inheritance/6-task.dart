// `final class` cannot be extended or implemented outside its library.
final class CarBlueprint {
  void hello() => print('Hello from a final car blueprint');
}

// `base class` can be extended, but not implemented, outside its library.
base class CarModel {
  void greet() => print('Hello from the base car model');
}

base class ElectricCar extends CarModel {
  @override
  void greet() {
    super.greet();
    print('...and from the electric car');
  }
}

void main() {
  CarBlueprint().hello();
  ElectricCar().greet();

  // Uncommenting either of these in ANOTHER library causes a compile error:
  //   class X extends CarBlueprint {}
  //   class Y implements CarModel {}
}