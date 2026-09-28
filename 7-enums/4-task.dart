abstract interface class Describable {
  String describe();
}

enum CarType implements Describable {
  compact(seats: 5, price: 22000),
  suv(seats: 7, price: 38000),
  electric(seats: 5, price: 45000);

  final int seats;
  final double price;

  const CarType({required this.seats, required this.price});

  double get pricePerSeat => price / seats;

  @override
  String describe() => '$name: $seats seats for \$$price';
}

void main() {
  for (final carType in CarType.values) {
    print('${carType.describe()} (\$${carType.pricePerSeat.toStringAsFixed(2)}/seat)');
  }
}