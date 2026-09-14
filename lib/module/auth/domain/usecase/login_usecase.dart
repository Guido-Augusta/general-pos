import 'package:general_pos/core/network/handle_request.dart';
import 'package:general_pos/module/auth/domain/model/user/user_entity.dart';
import 'package:general_pos/module/auth/domain/repository/auth_repository.dart';

class LoginUsecase {
  final AuthRepository _repo;

  LoginUsecase(this._repo);

  FutureResult<UserEntity> call(String username, String password) {
    return _repo.login(username, password);
  }
}
