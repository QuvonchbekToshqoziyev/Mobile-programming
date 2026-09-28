mixin Walker {
  void walk() => print('Walking');
}

mixin Swimmer {
  void swim() => print('Swimming');
}

mixin Flyable {
  void fly() => print('Flying');
}

class Duck with Walker, Swimmer, Flyable {}

void main() {
  final d = Duck();
  d.walk();
  d.swim();
  d.fly();
}