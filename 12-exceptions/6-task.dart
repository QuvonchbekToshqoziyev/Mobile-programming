void carInspection() {
  throw FormatException('Original error from carInspection()');
}

void carService() {
  try {
    carInspection();
  } catch (e) {
    print('carService() logging: $e');
    rethrow; // Preserves the original stack trace.
  }
}

void main() {
  try {
    carService();
  } catch (e, st) {
    print('main() caught: $e');
    print('Trace still points to carInspection():');
    print(st);
  }
}