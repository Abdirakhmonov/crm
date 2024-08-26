import 'package:bloc/bloc.dart';
import 'package:crm_flutter/data/models/user/user.dart';
import 'package:crm_flutter/data/repositories/admin_user_management_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'admin_user_management_bloc.freezed.dart';

part 'admin_user_management_event.dart';

part 'admin_user_management_state.dart';

class AdminUserManagementBloc
    extends Bloc<AdminUserManagementEvent, AdminUserManagementState> {
  final AdminManagementRepository _adminManagementRepository;

  AdminUserManagementBloc({
    required AdminManagementRepository adminManagementRepository,
  })  : _adminManagementRepository = adminManagementRepository,
        super(const AdminUserManagementState()) {
    on<GetAllUsersEvent>(_onGetAllUsers);
  }

  void _onGetAllUsers(
    GetAllUsersEvent event,
    Emitter<AdminUserManagementState> emit,
  ) async {
    emit(state.copyWith(
      adminUserManagementStatus: AdminUserManagementStatus.loading,
    ));

    try {
      final appResponse = await _adminManagementRepository.getAllUsers();
      if (appResponse.isSuccess && appResponse.errorMessage.isEmpty) {
        List<User> allUsers = [];

        for(var data in (appResponse.data as List)){
          allUsers.add(User.fromJson(data));
        }

        emit(state.copyWith(
          adminUserManagementStatus: AdminUserManagementStatus.loaded,
          users: allUsers,
        ));
      } else {
        throw 'error: {status_code: ${appResponse.statusCode}, "error_message": ${appResponse.errorMessage}}';
      }
    } catch (e) {
      emit(state.copyWith(
        adminUserManagementStatus: AdminUserManagementStatus.error,
        error: e.toString(),
      ));
    }
  }
}
