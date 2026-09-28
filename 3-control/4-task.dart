void main() {
  List<int> guesses = [1, 10, 30, 50, 70];
  int target = 10;

  int index = 0;
  while (true) {
    if (index >= guesses.length) {
      print('Ran out of guesses. Target was $target.');
      break;
    }
    int guess = guesses[index];
    print('Guess #${index + 1}: $guess');
    if (guess == target) {
      print('Correct! The number was $target.');
      break;
    } else if (guess < target) {
      print('Too low.');
    } else {
      print('Too high.');
    }
    index++;
  }
}