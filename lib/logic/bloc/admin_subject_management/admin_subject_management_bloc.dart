import 'package:bloc/bloc.dart';
import 'package:crm_flutter/data/models/subject/subject.dart';
import 'package:crm_flutter/data/repositories/admin_subject_management_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_subject_management_bloc.freezed.dart';

part 'admin_subject_management_event.dart';

part 'admin_subject_management_state.dart';

class AdminSubjectManagementBloc
    extends Bloc<AdminSubjectManagementEvent, AdminSubjectManagementState> {
  final AdminSubjectManagementRepository _adminSubjectManagementRepository;

  AdminSubjectManagementBloc({
    required AdminSubjectManagementRepository adminSubjectManagementRepository,
  })  : _adminSubjectManagementRepository = adminSubjectManagementRepository,
        super(const AdminSubjectManagementState()) {
    on<AdminSubjectManagementEvent>(
      (
        AdminSubjectManagementEvent events,
        Emitter<AdminSubjectManagementState> emit,
      ) async {
        await events.map(
          getAll: (event) async => await _onGetAllSubjects(event, emit),
          getOne: (event) async => await _onGetOneSubject(event, emit),
          add: (event) async => await _onAddSubject(event, emit),
          edit: (event) async => _onEditSubject(event, emit),
          delete: (event) async => _onDeleteSubject(event, emit),
        );
      },
    );
  }

  Future<void> _onGetAllSubjects(
    GetAllSubjectsEvent event,
    Emitter<AdminSubjectManagementState> emit,
  ) async {
    emit(state.copyWith(
      adminSubjectManagementStatus: AdminSubjectManagementStatus.loading,
    ));

    try {
      final appResponse = await _adminSubjectManagementRepository.getAll();

      if (appResponse.isSuccess && appResponse.errorMessage.isEmpty) {
        List<Subject> allSubjects = [];

        for (var data in (appResponse.data as List)) {
          allSubjects.add(Subject.fromJson(data));
        }

        emit(state.copyWith(
          subjects: allSubjects,
          adminSubjectManagementStatus: AdminSubjectManagementStatus.loaded,
        ));
      } else {
        throw 'error: {status_code: ${appResponse.statusCode}, "error_message": ${appResponse.errorMessage}}';
      }
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        adminSubjectManagementStatus: AdminSubjectManagementStatus.error,
      ));
    }
  }

  Future<void> _onGetOneSubject(
    GetOneSubjectEvent event,
    Emitter<AdminSubjectManagementState> emit,
  ) async {
    emit(state.copyWith(
      adminSubjectManagementStatus: AdminSubjectManagementStatus.loading,
    ));

    try {
      final appResponse =
          await _adminSubjectManagementRepository.getOne(id: event.id);

      if (appResponse.isSuccess && appResponse.errorMessage.isEmpty) {
        add(const GetAllSubjectsEvent());
      } else {
        throw 'error: {status_code: ${appResponse.statusCode}, "error_message": ${appResponse.errorMessage}}';
      }
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        adminSubjectManagementStatus: AdminSubjectManagementStatus.error,
      ));
    }
  }

  Future<void> _onAddSubject(
    AddSubjectEvent event,
    Emitter<AdminSubjectManagementState> emit,
  ) async {
    emit(state.copyWith(
      adminSubjectManagementStatus: AdminSubjectManagementStatus.loading,
    ));
    try {
      final appResponse =
          await _adminSubjectManagementRepository.add(name: event.name);

      if (appResponse.isSuccess && appResponse.errorMessage.isEmpty) {
        add(const GetAllSubjectsEvent());
      } else {
        throw 'error: {status_code: ${appResponse.statusCode}, "error_message": ${appResponse.errorMessage}}';
      }
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        adminSubjectManagementStatus: AdminSubjectManagementStatus.error,
      ));
    }
  }

  Future<void> _onEditSubject(
    EditSubjectEvent event,
    Emitter<AdminSubjectManagementState> emit,
  ) async {
    emit(state.copyWith(
      adminSubjectManagementStatus: AdminSubjectManagementStatus.loading,
    ));
    try {
      final appResponse = await _adminSubjectManagementRepository.edit(
          id: event.id, name: event.name);

      if (appResponse.isSuccess && appResponse.errorMessage.isEmpty) {
        add(const GetAllSubjectsEvent());
      } else {
        throw 'error: {status_code: ${appResponse.statusCode}, "error_message": ${appResponse.errorMessage}}';
      }
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        adminSubjectManagementStatus: AdminSubjectManagementStatus.error,
      ));
    }
  }

  Future<void> _onDeleteSubject(
    DeleteSubjectsEvent event,
    Emitter<AdminSubjectManagementState> emit,
  ) async {
    emit(state.copyWith(
      adminSubjectManagementStatus: AdminSubjectManagementStatus.loading,
    ));
    try {
      final appResponse =
          await _adminSubjectManagementRepository.delete(id: event.id);

      if (appResponse.isSuccess && appResponse.errorMessage.isEmpty) {
        add(const GetAllSubjectsEvent());
      } else {
        throw 'error: {status_code: ${appResponse.statusCode}, "error_message": ${appResponse.errorMessage}}';
      }
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        adminSubjectManagementStatus: AdminSubjectManagementStatus.error,
      ));
    }
  }
}
