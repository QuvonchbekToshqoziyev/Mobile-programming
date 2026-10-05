enum CarStatus { parked, driving, maintenance, unavailable }

String carStatusLabel(CarStatus status) => switch (status) {
      CarStatus.parked => 'Parked',
      CarStatus.driving => 'Driving',
      CarStatus.maintenance => 'In maintenance',
      CarStatus.unavailable => 'Unavailable',
    };

void main() {
  for (final status in CarStatus.values) {
    print('${status.name} -> ${carStatusLabel(status)}');
  }
}