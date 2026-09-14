import 'package:general_pos/module/auth/domain/model/user/user_entity.dart';
import 'package:general_pos/module/auth/domain/repository/auth_repository.dart';

class GetLoginSessionUsecase {
  final AuthRepository _repo;

  GetLoginSessionUsecase(this._repo);

  Future<UserEntity?> call() {
    return _repo.getLoginSession();
  }
}
