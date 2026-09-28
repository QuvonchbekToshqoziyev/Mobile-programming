import 'dart:io';

void main() {
  bool success = true;

  if (success) {
    print('Operation completed successfully.');
    exitCode = 0;
  } else {
    print('Operation failed.');
    exitCode = 1;
  }
}