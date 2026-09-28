class Animal {
  String makeSound() => 'Some generic sound';
}

class Dog extends Animal {
  @override
  String makeSound() => 'Woof!';
}

void main() {
  final animal = Animal();
  final dog = Dog();
  print('Animal: ${animal.makeSound()}');
  print('Dog: ${dog.makeSound()}');
}