import 'package:general_pos/core/constant/user/user_role.dart';
import 'package:general_pos/core/local_database/local_database.dart';
import 'package:general_pos/module/auth/domain/model/user/user_entity.dart';

extension UserItemExtention on UserModelData {
  UserEntity get toEntity {
    return UserEntity(
      id: id,
      username: username,
      role: role == "admin" ? UserRole.admin : UserRole.employee,
      isActive: isActive,
    );
  }
}
