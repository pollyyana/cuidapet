import 'package:cuidapet/app/modules/auth/home/auth_home_page.dart';
import 'package:cuidapet/app/modules/auth/login/login_module.dart';
import 'package:cuidapet/app/modules/auth/register/register_module.dart';
import 'package:cuidapet/app/modules/core/auth/auth_store.dart';
import 'package:cuidapet/app/repositories/user/user_repository.dart';
import 'package:cuidapet/app/repositories/user/user_repository_impl.dart';
import 'package:cuidapet/app/services/user/user_service.dart';
import 'package:cuidapet/app/services/user/user_service_impl.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton<AuthStore>(AuthStore.new); // Registra AuthStore
    //adicionando antes
    i.addLazySingleton<UserRepository>(UserRepositoryImpl.new);
    i.addLazySingleton<UserService>(UserServiceImpl.new);
    super.binds(i);
  }

  // Define a rota inicial do módulo, carregando AuthHomePage.
  // O AuthStore é recuperado via injeção de dependência com Modular.get().
  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute,
        child: (_) => AuthHomePage(authStore: Modular.get<AuthStore>()));
    r.module('/login', module: LoginModule());
    r.module('/register', module: RegisterModule());
    super.routes(r);
  }
}
