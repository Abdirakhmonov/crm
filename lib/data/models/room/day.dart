part of 'room.dart';

class Day {
  int id;
  String name;

  Day({
    required this.id,
    required this.name,
  });

  factory Day.fromJson(Map<String, dynamic> json) {
    return Day(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
