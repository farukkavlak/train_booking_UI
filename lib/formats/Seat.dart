class Seat {
  bool? available;

  Seat({
    this.available,
  });

  Seat.fromMap(Map<String, dynamic> map) {
    available = map['available'] as bool?;
  }
}
