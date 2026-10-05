class CarDto {
  final int id;
  final String model;
  final String manufacturer;

  const CarDto({
    required this.id,
    required this.model,
    required this.manufacturer,
  });

  @override
  String toString() => 'CarDto(id: $id, model: $model, manufacturer: $manufacturer)';
}

void main() {
  const car = CarDto(id: 1, model: 'Model 3', manufacturer: 'Tesla');
  const same = CarDto(id: 1, model: 'Model 3', manufacturer: 'Tesla');

  print(car);
  print('Canonicalized (identical): ${identical(car, same)}');
}