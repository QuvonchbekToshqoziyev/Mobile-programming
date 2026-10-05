import 'dart:async';

void main() {
  int count = 0;
  late StreamSubscription<int> subscription;

  final stream = Stream<int>.periodic(
    const Duration(milliseconds: 500),
    (tick) => tick,
  );

  subscription = stream.listen((tick) {
    count++;
    print('Tick #$count (value: $tick)');
    if (count == 5) {
      subscription.cancel();
      print('Cancelled after 5 emissions.');
    }
  });
}