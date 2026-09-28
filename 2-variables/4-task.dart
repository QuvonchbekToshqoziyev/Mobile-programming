void main() {
  String? title;
  String displayname = title ?? 'Godfather';
  print('Display name: $displayname');

  title = 'Avatar';
  displayname = title ?? 'Godfather';
  print('Display name: $displayname');
}