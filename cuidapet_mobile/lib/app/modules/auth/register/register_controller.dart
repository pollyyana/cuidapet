import 'package:cuidapet/app/core/logger/app_logger.dart';
import 'package:cuidapet/app/core/ui/widget/loader.dart';
import 'package:cuidapet/app/services/user/user_service.dart';
import 'package:mobx/mobx.dart';

part 'register_controller.g.dart';

class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {

  final UserService _userService;
  final AppLogger _log;

  _RegisterControllerBase({
    required UserService userService,
    required AppLogger log,
  }) : _userService = userService,
       _log = log;

  Future<void> register({required String email, required String password}) async {
     Loader.show();
     await Future.delayed(const Duration(seconds: 2));
      Loader.hide();
    
  }

}
