import 'package:get_it/get_it.dart';
import 'package:uuid/uuid.dart';
import 'package:bcrypt/bcrypt.dart';

final di = GetIt.instance;

class AppUtils {
  AppUtils._();

  static String appName = "Base Project";

  static String generateUUID() => const Uuid().v7();

  static String generateHashPassword(String password) =>
      BCrypt.hashpw(password, BCrypt.gensalt());

  static bool checkHashPassword(String password, String hashedPassword) =>
      BCrypt.checkpw(password, hashedPassword);
}
