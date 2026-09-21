void main() {
  final DateTime now = DateTime.now();
  const DateTime fixedDate = DateTime(2024, 1, 1);

  print('final (runtime value): $now');
  print('const (compile-time value): $fixedDate');
}