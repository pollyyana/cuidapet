import 'package:cuidapet/app/core/logger/app_logger.dart';
import 'package:cuidapet/app/core/logger/app_logger_impl.dart';
import 'package:cuidapet/app/modules/auth/register/register_controller.dart';
import 'package:cuidapet/app/modules/auth/register/register_page.dart';
import 'package:cuidapet/app/services/user/user_service.dart';
import 'package:cuidapet/app/services/user/user_service_impl.dart';

import 'package:flutter_modular/flutter_modular.dart';

class RegisterModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton<RegisterController>(RegisterController.new);
    i.addLazySingleton<UserService>(UserServiceImpl.new);  //AuthModule
    i.addLazySingleton<AppLogger>(AppLoggerImpl.new);  //CoreModule
  }

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (_) => RegisterPage(),
    );
  }
}
