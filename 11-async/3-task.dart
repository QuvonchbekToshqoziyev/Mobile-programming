Future<String> serviceCar(String carType, int seconds) async {
  await Future.delayed(Duration(seconds: seconds));
  return '$carType service finished after ${seconds}s';
}

Future<void> main() async {
  final sw = Stopwatch()..start();

  final results = await Future.wait([
    serviceCar('Electric car', 2),
    serviceCar('Sports car', 1),
    serviceCar('Family car', 3),
  ]);

  sw.stop();
  print(results);
  print('Total time: ${sw.elapsed.inSeconds}s (concurrent, not 6s)');
}