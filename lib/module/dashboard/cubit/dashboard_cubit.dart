import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:general_pos/core/constant/bloc/bloc_status.dart';
import 'package:general_pos/module/auth/domain/model/user/user_entity.dart';
import 'package:general_pos/module/auth/domain/usecase/get_login_session_usecase.dart';
import 'package:general_pos/module/auth/domain/usecase/logout_usecase.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final GetLoginSessionUsecase _getLoginSession;
  final LogoutUsecase _logout;

  DashboardCubit(this._getLoginSession, this._logout) : super(DashboardState());

  void getLoginSession() async {
    emit(state.copyWith(status: BlocStatus.loading));
    final result = await _getLoginSession();
    emit(state.copyWith(user: result, status: BlocStatus.success));
  }

  Future<void> logout() async {
    await _logout();
  }
}
