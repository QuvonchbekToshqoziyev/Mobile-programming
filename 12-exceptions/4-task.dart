void risky(int mode) {
  switch (mode) {
    case 0:
      throw FormatException('Bad format');
    case 1:
      throw RangeError('Out of range');
    case 2:
      throw StateError('Bad state');
    default:
      throw Exception('Something else');
  }
}

void main() {
  for (int i = 0; i < 4; i++) {
    try {
      risky(i);
    } on FormatException catch (e) {
      print('Format problem: ${e.message}');
    } on RangeError catch (e) {
      print('Range problem: $e');
    } on StateError catch (e) {
      print('State problem: $e');
    } catch (e) {
      print('Generic problem: $e');
    }
  }
}