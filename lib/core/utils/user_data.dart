import 'package:crm_flutter/data/models/groups/group.dart';
import 'package:crm_flutter/data/models/user/user.dart';

class UserData {
  /// user info
  static int id = -1;
  static String name = '';
  static String phone = '';
  static String email = '';
  static String photo = '';
  static DateTime createdAt = DateTime.now();
  static DateTime emailVerifiedAt = DateTime.now();
  static DateTime updatedAt = DateTime.now();

  /// user role
  static int roleId = -1;
  static String roleName = '';
  static DateTime roleCreatedAt = DateTime.now();
  static DateTime roleUpdatedAt = DateTime.now();

  /// user group
  static int groupId = -1;
  static String groupName = '';
  static int groupMainTeacherId = -1;
  static int groupAssistantTeacherId = -1;
  static DateTime groupCreatedAt = DateTime.now();
  static DateTime groupUpdatedAt = DateTime.now();
  static User? groupMainTeacher;
  static User? groupAssistantTeacher;
  static List<User> groupStudents = [];

  static void setUserData(User user) {
    id = user.id;
    name = user.name;
    phone = user.phone;
    email = user.email ?? '';
    photo = user.photo ?? '';
    createdAt = user.createdAt ?? DateTime.now();
    emailVerifiedAt = user.emailVerifiedAt ?? DateTime.now();
    updatedAt = user.updatedAt ?? DateTime.now();

    roleId = user.roleId;
    roleName = user.role.name;
    roleCreatedAt = user.role.createdAt ?? DateTime.now();
    roleUpdatedAt = user.role.updatedAt ?? DateTime.now();
  }

  static void setUserGroup(Group group) {
    groupId = group.id;
    groupName = group.name;
    groupMainTeacherId = group.mainTeacherId;
    groupAssistantTeacherId = group.assistantTeacherId;
    groupCreatedAt = group.createdAt;
    groupUpdatedAt = group.updatedAt;
    groupMainTeacher = group.mainTeacher;
    groupAssistantTeacher = group.assistantTeacher;
    groupStudents = group.students;
  }
}
