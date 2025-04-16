import 'package:cuidapet/app/core/exceptions/user_exists_exception.dart';
import 'package:cuidapet/app/core/logger/app_logger.dart';
import 'package:cuidapet/app/core/ui/widget/loader.dart';
import 'package:cuidapet/app/core/ui/widget/messages.dart';
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
   try {
      Loader.show();
      await _userService.register(email, password);
      Messages.info('Eviamos um e-mail de confirmação, por favor confirme seu e-mail.');
      Loader.hide();
    } on UserExistsException{
      Loader.hide();
      Messages.alert('E-mail já utilizado, por favor escolha outro.');
    } catch(e, s) {
      _log.error('Erro ao registrar usuário', e, s);
      Loader.hide();
      Messages.alert('Erro ao registrar usuário.');
    }
    
  }

}
