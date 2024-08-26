part 'day.dart';

class Room {
  int id;
  String name;
  String description;
  int capacity;
  String createdAt;
  String updatedAt;

  Room({
    required this.id,
    required this.name,
    required this.description,
    required this.capacity,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        capacity: json['capacity'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'capacity': capacity,
      };
}
