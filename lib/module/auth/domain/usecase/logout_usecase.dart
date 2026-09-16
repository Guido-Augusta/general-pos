import 'package:general_pos/module/auth/domain/repository/auth_repository.dart';

class LogoutUsecase {
  final AuthRepository _repo;

  LogoutUsecase(this._repo);

  Future<void> call() {
    return _repo.logout();
  }
}
