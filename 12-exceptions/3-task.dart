void inspectCar(String? model) {
  if (model == null || model.isEmpty) {
    throw ArgumentError('car model must not be null or empty');
  }
  print('Inspecting $model');
}

void main() {
  inspectCar('Tesla');

  for (final input in ['', null]) {
    try {
      inspectCar(input);
    } on ArgumentError catch (e) {
      print('Caught: $e');
    }
  }
}