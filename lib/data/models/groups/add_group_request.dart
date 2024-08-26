class AddGroupRequest {
  final String name;
  final int mainTeacherId;
  final int assistantTeacherId;
  final int subjectId;

  const AddGroupRequest({
    required this.name,
    required this.mainTeacherId,
    required this.assistantTeacherId,
    required this.subjectId,
  });

  Map<String, dynamic> toMap() => {
        "name": name,
        "main_teacher_id": mainTeacherId,
        "assistant_teacher_id": assistantTeacherId,
        "subject_id": subjectId,
      };
}
