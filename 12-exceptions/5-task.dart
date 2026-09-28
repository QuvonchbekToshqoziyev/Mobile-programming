void carCheckLevel3() => throw Exception('Deep car failure');
void carCheckLevel2() => carCheckLevel3();
void carCheckLevel1() => carCheckLevel2();

void main() {
  try {
    carCheckLevel1();
  } catch (e, stackTrace) {
    print('Error: $e');
    print('Stack trace:');
    print(stackTrace);
  }
}