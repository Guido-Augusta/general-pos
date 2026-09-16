import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:general_pos/core/constant/user/user_role.dart';

part 'user_entity.freezed.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String username,
    required UserRole role,
    required bool isActive,
  }) = _UserEntity;
}
