import 'package:cuidapet/app/modules/auth/home/auth_home_page.dart';
import 'package:cuidapet/app/modules/auth/login/login_module.dart';
import 'package:cuidapet/app/modules/auth/register/register_module.dart';
import 'package:cuidapet/app/modules/core/auth/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {

   @override
  void binds(i) {
    i.addLazySingleton<AuthStore>(AuthStore.new); // Registra AuthStore
  }

  @override
  void routes(r) {
    // Define a rota inicial do módulo, carregando AuthHomePage.
    // O AuthStore é recuperado via injeção de dependência com Modular.get().
    r.child(
      Modular.initialRoute,
      child: (_) => AuthHomePage(authStore: Modular.get()),
    );
    r.module('/login', module: LoginModule());
    r.module('/register', module: RegisterModule());
  }
}
