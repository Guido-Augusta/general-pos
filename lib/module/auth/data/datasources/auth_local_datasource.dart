import 'package:general_pos/core/constant/exceptions/app_exceptions.dart';
import 'package:general_pos/core/local_database/local_database.dart';
import 'package:general_pos/core/local_storage/local_storage.dart';
import 'package:general_pos/core/utils/app_utils.dart';

abstract class AuthLocalDataSource {
  Future<UserModelData> login(String username, String password);
  Future<bool> saveLoginSession(UserModelData user);
  Future<UserModelData> getLoginSession();
  Future<bool> logout();
}

class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  final LocalDatabase _localDatabase;
  final LocalStorage _localStorage;

  AuthLocalDataSourceImpl(this._localDatabase, this._localStorage);

  @override
  Future<UserModelData> login(String username, String password) async {
    final query = _localDatabase.select(_localDatabase.userModel)
      ..where((tbl) {
        return tbl.username.equals(username);
      });

    final user = await query.getSingleOrNull();

    if (user == null) throw UserNotFoundException();
    if (!AppUtils.checkHashPassword(password, user.passwordHash)) {
      throw WrongPasswordException();
    }

    if (!user.isActive) throw UserInactiveException();

    // when user found
    saveLoginSession(user);

    return user;
  }

  @override
  Future<bool> saveLoginSession(UserModelData user) async {
    final result = await _localStorage.saveString(
      LocalStorage.savedUserId,
      user.id,
    );

    return result == LocalStorageResult.saved;
  }

  @override
  Future<UserModelData> getLoginSession() async {
    final userId = await _localStorage.getString(LocalStorage.savedUserId);

    if (userId == null) throw UserNotFoundException();

    final query = _localDatabase.select(_localDatabase.userModel)
      ..where((tbl) {
        return tbl.id.equals(userId);
      });
    final user = await query.getSingleOrNull();

    if (user == null) throw UserNotFoundException();
    if (!user.isActive) throw UserInactiveException();

    return user;
  }

  @override
  Future<bool> logout() async {
    final result = await _localStorage.removeData(LocalStorage.savedUserId);
    return result == LocalStorageResult.deleted;
  }
}
