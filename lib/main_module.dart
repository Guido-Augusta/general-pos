import 'package:general_pos/core/env/env.dart';
import 'package:general_pos/core/local_database/local_database.dart';
import 'package:general_pos/core/local_storage/local_storage.dart';
import 'package:general_pos/core/local_storage/local_storage_secure.dart';
import 'package:general_pos/core/network/http_client.dart';
import 'package:general_pos/core/network/service/network_service.dart';
import 'package:general_pos/core/utils/app_event/app_event_broadcaster.dart';
import 'package:general_pos/core/utils/app_utils.dart';
import 'package:general_pos/module/auth/auth_module.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

class MainModule {
  const MainModule._();

  static Future<void> init() async {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    // network
    di.registerSingleton(NetworkService(dioClient: Dio()..init(Env.baseUrl)));

    // local storage
    di.registerSingleton<LocalStorage>(LocalStorageSecure()..init());

    // local database
    di.registerSingleton<LocalDatabase>(LocalDatabase());

    // app event
    di.registerSingleton(AppEventBroadcaster());

    // module
    AuthModule.init();
  }
}
