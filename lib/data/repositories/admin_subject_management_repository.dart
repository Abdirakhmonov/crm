import 'package:crm_flutter/data/models/app_response.dart';
import 'package:crm_flutter/data/services/dio/admin_subject_management_dio_service.dart';

class AdminSubjectManagementRepository {
  final AdminSubjectManagementDioService _adminSubjectManagementDioService;

  AdminSubjectManagementRepository({
    required AdminSubjectManagementDioService adminSubjectManagementDioService,
  }) : _adminSubjectManagementDioService = adminSubjectManagementDioService;

  Future<AppResponse> getAll() async =>
      _adminSubjectManagementDioService.getAllSubjects();

  Future<AppResponse> getOne({required String id}) async =>
      _adminSubjectManagementDioService.getOneSubject(id: id);

  Future<AppResponse> add({required String name}) async =>
      _adminSubjectManagementDioService.addSubject(name: name);

  Future<AppResponse> edit({
    required String id,
    required String name,
  }) async =>
      _adminSubjectManagementDioService.editSubject(id: id, name: name);

  Future<AppResponse> delete({required String id}) async =>
      _adminSubjectManagementDioService.deleteSubject(id: id);
}
