import 'package:general_pos/core/network/handle_request.dart';
import 'package:general_pos/module/auth/domain/model/user/user_entity.dart';

abstract class AuthRepository {
  FutureResult<UserEntity> login(String username, String password);
  Future<UserEntity?> getLoginSession();
  Future<void> logout();
}
