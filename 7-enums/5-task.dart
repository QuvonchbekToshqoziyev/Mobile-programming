enum CarRole { owner, mechanic, driver }

CarRole? parseCarRole(String raw) {
  try {
    return CarRole.values.byName(raw);
  } on ArgumentError {
    return null;
  }
}

void main() {
  print(parseCarRole('owner'));
  print(parseCarRole('driver'));
  print(parseCarRole('hacker'));
}