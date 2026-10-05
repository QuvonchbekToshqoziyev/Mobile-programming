/// A utility class for validating car data.
class CarValidator {
  /// Checks whether [vin] looks like a valid vehicle identification number.
  ///
  /// Returns `true` if [email] contains exactly one `@` with text on both
  /// sides and a `.` in the domain part, otherwise `false`.
  ///
  /// Throws an [ArgumentError] if [vin] is empty.
  static bool isValidVin(String vin) {
    if (vin.isEmpty) throw ArgumentError('VIN cannot be empty');
    return vin.length == 17;
  }

  /// Checks whether [year] is within the range [min] to [max] inclusive.
  ///
  /// Returns `true` if the age is in range, otherwise `false`.
  ///
  /// Throws a [RangeError] if [min] is greater than [max].
  static bool isYearInRange(int year, {int min = 1886, int max = 2100}) {
    if (min > max) throw RangeError('min cannot be greater than max');
    return year >= min && year <= max;
  }
}

void main() {
  print(CarValidator.isValidVin('1HGBH41JXMN109186'));
  print(CarValidator.isYearInRange(2024));
  try {
    CarValidator.isValidVin('');
  } on ArgumentError catch (e) {
    print('Caught: $e');
  }
}