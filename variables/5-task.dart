void main() {
  Object value = 'Greetings';
  typePromotionDemo(value);

  value = 11;
  typePromotionDemo(value);
}

void typePromotionDemo(Object value) {
  if (value is String) {
    print('Promoted to String. Length: ${value.length}');
  } else if (value is int) {
    print('Promoted to int. Doubled: ${value * 2}');
  } else {
    print('Type not handled: ${value.runtimeType}');
  }
}