import 'package:crm_flutter/data/models/user/role.dart';

class User {
  final int id;
  final String name;
  final String? email;
  final String phone;
  final String? photo;
  final DateTime? emailVerifiedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int roleId;
  final Role role;

  const User({
    required this.id,
    required this.name,
    this.email,
    required this.phone,
    this.photo,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
    required this.roleId,
    required this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? -1,
      name: json['name'] ?? 'null',
      email: json['email'] ?? 'null',
      phone: json['phone'] ?? 'null',
      photo: json['photo'] ?? 'null',
      emailVerifiedAt: json['email_verified_at'] != null
          ? DateTime.parse(json['email_verified_at'])
          : null,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
      roleId: json['role_id'] ?? -1,
      role: Role.fromJson(json['role'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'photo': photo,
      'email_verified_at': emailVerifiedAt,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'role_id': roleId,
      'role': role.toJson(),
    };
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'photo': photo,
      'email_verified_at': emailVerifiedAt?.toIso8601String(),
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'role_id': roleId,
      'role': role.toMap(),
    };
  }

  User copyWith({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? photo,
    DateTime? emailVerifiedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? roleId,
    Role? role,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      photo: photo ?? this.photo,
      emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      roleId: roleId ?? this.roleId,
      role: role ?? this.role,
    );
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, phone: $phone, roleId: $roleId, photo: $photo, role: ${role.toString()}, emailVerifiedAt: $emailVerifiedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
