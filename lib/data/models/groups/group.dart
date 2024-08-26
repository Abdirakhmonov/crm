import 'package:crm_flutter/data/models/subject/subject.dart';

import '../user/user.dart';

class Group {
  final int id;
  final String name;
  final int mainTeacherId;
  final int assistantTeacherId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final User mainTeacher;
  final User assistantTeacher;
  final List<User> students;
  final Subject subject;

  const Group({
    required this.id,
    required this.name,
    required this.mainTeacherId,
    required this.assistantTeacherId,
    required this.createdAt,
    required this.updatedAt,
    required this.mainTeacher,
    required this.assistantTeacher,
    required this.students,
    required this.subject,
  });

  factory Group.fromJson(Map<String, dynamic> json) => Group(
        id: json['id'] ?? -1,
        name: json['name'] ?? 'null',
        mainTeacherId: json['main_teacher_id'] ?? -1,
        assistantTeacherId: json['assistant_teacher_id'] ?? -1,
        createdAt: DateTime.parse(json['created_at']),
        updatedAt: DateTime.parse(json['updated_at']),
        mainTeacher: User.fromJson(json['main_teacher'] ?? {}),
        assistantTeacher: User.fromJson(json['assistant_teacher'] ?? {}),
        students: (json['students'] as List<dynamic>?)
                ?.map((e) => User.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
        subject: Subject.fromJson(
          json['subject'] ??
              {
                'id': -1,
                "name":"null",
                "created_at": DateTime.now().toIso8601String(),
                "updated_at": DateTime.now().toIso8601String(),
              },
        ),
      );

  @override
  String toString() {
    return 'Group(id: $id, name: $name, mainTeacherId: $mainTeacherId, assistantTeacherId: $assistantTeacherId, createdAt: $createdAt, updatedAt: $updatedAt, mainTeacher: ${mainTeacher.toString()}, assistantTeacher: ${assistantTeacher.toString()}, students: $students)';
  }
}
