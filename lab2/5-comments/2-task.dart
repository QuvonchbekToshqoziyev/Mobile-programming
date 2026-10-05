class Circle {
	final double radius;

	Circle(this.radius);

	double area() {
		// Square the radius before multiplying by pi.
		final radiusSquared = radius * radius;

		/*
		 * The area of a circle is calculated with the formula:
		 * A = pi * r^2
		 */
		return 3.14159 * radiusSquared;
	}
}

void main() {
	final circle = Circle(5);
	print('Area: ${circle.area()}');
}
