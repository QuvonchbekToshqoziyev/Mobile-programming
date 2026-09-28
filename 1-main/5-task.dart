void main(List<String> arguments) {
  if (arguments.length != 2) {
    print('Usage: dart 5.dart <arg1> <arg2>');
    return;
  }
  print('Received exactly two arguments: ${arguments[0]}, ${arguments[1]}');
}