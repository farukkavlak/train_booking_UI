import 'package:train_ticket/formats/Seat.dart';

class Trip {
  String? id;
  String? logo;
  String? title;
  double? price;
  List<dynamic>? seats;

  Trip({
    this.id,
    this.logo,
    this.title,
    this.price,
    this.seats,
  });

  Trip.fromMap(Map<String, dynamic> map) {
    id = map['id'] as String?;
    logo = map['logo'] as String?;
    title = map['title'] as String?;
    price = map['price'] as double?;
    seats = map['seats'].map((seats) => Seat.fromMap(seats)).toList();
  }
}
