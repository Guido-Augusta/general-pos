import 'package:general_pos/core/utils/app_utils.dart';
import 'package:general_pos/module/auth/data/datasources/auth_local_datasource.dart';
import 'package:general_pos/module/auth/data/repository/auth_repository_impl.dart';
import 'package:general_pos/module/auth/domain/repository/auth_repository.dart';
import 'package:general_pos/module/auth/domain/usecase/get_login_session_usecase.dart';
import 'package:general_pos/module/auth/domain/usecase/login_usecase.dart';
import 'package:general_pos/module/auth/domain/usecase/logout_usecase.dart';

class AuthModule {
  AuthModule._();

  static Future<void> init() async {
    // data source
    di.registerSingleton<AuthLocalDataSource>(
      AuthLocalDataSourceImpl(di(), di()),
    );

    // repository
    di.registerSingleton<AuthRepository>(AuthRepositoryImpl(di()));

    // usecase
    di.registerSingleton(LoginUsecase(di()));
    di.registerSingleton(GetLoginSessionUsecase(di()));
    di.registerSingleton(LogoutUsecase(di()));
  }
}
