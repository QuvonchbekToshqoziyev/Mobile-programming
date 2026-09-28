/// A basic shape.
class Shape {
  /// Returns the area of this shape.
  ///
  /// The base implementation returns `0`. Subclasses should [override] it.
  double area() => 0;

  /// Old way of describing a shape.
  ///
  /// **Deprecated:** use [describe] instead. This method will be removed
  /// in a future version.
  @deprecated
  String oldDescribe() => 'A shape';

  /// Returns a text description of this shape.
  String describe() => 'A shape with area ${area()}';
}

/// A square with equal sides.
class Square extends Shape {
  /// The length of one side.
  final double side;

  /// Creates a square with the given [side] length.
  Square(this.side);

  /// Returns the area, computed as [side] squared.
  @override
  double area() => side * side;
}

void main() {
  final s = Square(4);
  print(s.describe());
  // ignore: deprecated_member_use_from_same_package
  print(s.oldDescribe());
}