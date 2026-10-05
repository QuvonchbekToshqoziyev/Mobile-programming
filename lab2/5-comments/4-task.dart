/// A helper that formats a car greeting.
///
/// This doc comment demonstrates **Markdown** inside Dartdoc:
///
/// * **Bold** text with double asterisks
/// * _Italic_ text with underscores
/// * Bullet points like this list
///
/// Example usage:
///
/// ```dart
/// final message = greetCar('Tesla');
/// print(message); // Hello, Tesla!
/// ```
String greetCar(String carType) => 'Hello, $carType!';

void main() {
  print(greetCar('Tesla'));
}