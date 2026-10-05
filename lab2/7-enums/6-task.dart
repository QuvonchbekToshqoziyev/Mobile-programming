enum CarValue<T> {
  mileage<int>(42000),
  model<String>('Model 3'),
  efficiency<double>(6.2);

  final T value;
    const CarValue(this.value);

  static List<CarValue> withType<R>() =>
      values.where((carValue) => carValue.value is R).toList();

  static CarValue? firstOrNull() => values.isEmpty ? null : values.first;
}

void main() {
  print(CarValue.mileage.value);
  print(CarValue.model.value);
  print('Numeric car values: ${CarValue.withType<num>()}');
  print('First: ${CarValue.firstOrNull()}');
}