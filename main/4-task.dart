void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('No numbers provided.');
    return;
  }
  final numbers = arguments.map((a) => double.parse(a)).toList();
  final sum = numbers.fold(0.0, (acc, n) => acc + n);
  final average = sum / numbers.length;
  print('Average of provided numbers: $average');
}