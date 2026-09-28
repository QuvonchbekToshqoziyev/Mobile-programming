import 'dart:math' as math;

abstract class Shape {
  double area();
}

class Circle extends Shape {
  final double radius;
  Circle(this.radius);

  @override
  double area() => math.pi * radius * radius;
}

class Rectangle extends Shape {
  final double width, height;
  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

void main() {
  final shapes = <Shape>[Circle(3), Rectangle(4, 5)];
  for (final s in shapes) {
    print('${s.runtimeType} area: ${s.area().toStringAsFixed(2)}');
  }
}