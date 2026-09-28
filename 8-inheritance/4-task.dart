class Shape {
  String get name => 'Shape';
}

class Polygon extends Shape {
  final int sides;
  Polygon(this.sides);

  @override
  String get name => 'Polygon with $sides sides';
}

class Triangle extends Polygon {
  final double base, height;

  Triangle(this.base, this.height) : super(3);

  double get area => 0.5 * base * height;

  @override
  String get name => 'Triangle (${super.name})';
}

void main() {
  final t = Triangle(4, 5);
  print(t.name);
  print('Area: ${t.area}');
}