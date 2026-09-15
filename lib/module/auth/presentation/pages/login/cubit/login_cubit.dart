import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:general_pos/core/constant/bloc/bloc_status.dart';
import 'package:general_pos/core/constant/network/failure.dart';
import 'package:general_pos/module/auth/domain/model/user/user_entity.dart';
import 'package:general_pos/module/auth/domain/usecase/login_usecase.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUsecase _login;
  LoginCubit(this._login) : super(LoginState());

  void login(String username, String password) async {
    emit(state.copyWith(status: BlocStatus.loading));

    final result = await _login(username, password);

    result.fold(
      (failure) {
        emit(state.copyWith(status: BlocStatus.error, failure: failure));
      },
      (user) {
        emit(
          state.copyWith(status: BlocStatus.success, failure: null, user: user),
        );
      },
    );
  }
}
