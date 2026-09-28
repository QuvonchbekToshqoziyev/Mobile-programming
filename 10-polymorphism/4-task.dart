class Repository<T> {
  final List<T> _items = [];

  void add(T item) => _items.add(item);

  List<T> getAll() => List.unmodifiable(_items);

  T? firstWhere(bool Function(T) test) {
    for (final item in _items) {
      if (test(item)) return item;
    }
    return null;
  }
}

void main() {
  final numbers = Repository<int>();
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);

  final names = Repository<String>();
  names.add('Alice');
  names.add('Bob');

  print(numbers.getAll());
  print(names.getAll());
  print(numbers.firstWhere((n) => n > 1));
}