import 'package:train_ticket/formats/Trip.dart';
import 'package:train_ticket/data/TripDataJson.dart';

final List<Trip> tripsAvailable = tripAvailableJson
    .asMap()
    .map((index, value) =>
        MapEntry(index, Trip.fromMap(tripAvailableJson[index])))
    .values
    .toList();
