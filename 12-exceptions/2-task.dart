double fuelPerDistance(double fuel, double distance) {
  if (distance == 0) throw UnsupportedError('Cannot divide by zero distance');
  return fuel / distance;
}

void main() {
  try {
    print(fuelPerDistance(10, 2));
    print(fuelPerDistance(10, 0));
  } on UnsupportedError catch (e) {
    print('Caught: $e');
  }
}