import 'package:fpdart/fpdart.dart';
import 'package:general_pos/core/constant/exceptions/app_exceptions.dart';
import 'package:general_pos/core/constant/network/failure.dart';
import 'package:general_pos/module/auth/data/datasources/auth_local_datasource.dart';
import 'package:general_pos/module/auth/data/mapper/user_mapper.dart';

import '../../domain/repository/auth_repository.dart';

import 'package:general_pos/core/network/handle_request.dart';
import 'package:general_pos/module/auth/domain/model/user/user_entity.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthLocalDataSource _local;

  AuthRepositoryImpl(this._local);

  @override
  FutureResult<UserEntity> login(String username, String password) async {
    try {
      final result = await _local.login(username, password);
      return Right(result.toEntity);
    } catch (e) {
      if (e is UserNotFoundException) {
        return Left(UserNotFoundFailure());
      }
      if (e is UserInactiveException) {
        return Left(UserInactiveFailure());
      }
      if (e is WrongPasswordException) {
        return Left(WrongPasswordFailure());
      }

      return Left(ErrorMessageFailure("Something went wrong!"));
    }
  }

  @override
  Future<UserEntity?> getLoginSession() async {
    try {
      final result = await _local.getLoginSession();
      return result.toEntity;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _local.logout();
    } catch (e) {
      // do nothing
    }
  }
}
