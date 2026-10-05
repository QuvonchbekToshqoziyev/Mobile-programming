mixin Flyable {
  void fly() => print('Flying through the air');
}

class Bird with Flyable {
  final String name;
  Bird(this.name);
}

void main() {
  final b = Bird('Sparrow');
  print('${b.name} says:');
  b.fly();
}