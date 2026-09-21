void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> doubled = transformList(numbers, (n) => n * 2);
  print(doubled);
}

List<int> transformList(List<int> numbers, int Function(int) transformer) {
  return numbers.map(transformer).toList();
}