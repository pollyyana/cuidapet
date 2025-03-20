
import 'package:cuidapet/app/modules/auth/register/register_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterModule extends Module {
   @override
  void binds(i) {
    // Aqui você pode registrar suas dependências, se necessário
  }

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (context) => RegisterPage(),
      // child: (_) => LoginPage(),
    ); 
  }
}