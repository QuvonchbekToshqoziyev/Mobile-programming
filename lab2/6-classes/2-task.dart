class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);

  @override
  String toString() => 'Person(name: $name, age: $age)';
}

void main() {
  final p = Person('Alice', 30);
  print(p);
}