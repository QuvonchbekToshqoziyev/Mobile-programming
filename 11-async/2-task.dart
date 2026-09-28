Future<Map<String, String>> lookupUser(int id) async {
  print('Looking up user $id...');
  await Future.delayed(const Duration(seconds: 2));
  return {'id': '$id', 'name': 'Alice', 'email': 'alice@example.com'};
}

Future<void> main() async {
  final user = await lookupUser(1024);
  print('Found: $user');
}