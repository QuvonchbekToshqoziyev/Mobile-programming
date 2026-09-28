void main() {
  print(wrapText('Hello'));
  print(wrapText('Hello', '<<'));
  print(wrapText('Hello', '<<', '>>'));
}

String wrapText(String text, [String prefix = '[', String suffix = ']']) {
  return '$prefix$text$suffix';
}