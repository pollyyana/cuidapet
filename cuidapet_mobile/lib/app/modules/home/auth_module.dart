import 'package:cuidapet/app/modules/home/auth_home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  void binds(i) {
    // Aqui você pode registrar suas dependências, se necessário
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute,
        child: (context) => AuthHomePage() // Define a primeira página do módulo
        );
  }
}

