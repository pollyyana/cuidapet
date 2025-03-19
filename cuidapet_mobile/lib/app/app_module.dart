import 'package:cuidapet/app/modules/core/auth/auth_store.dart';
import 'package:cuidapet/app/modules/core/core_module.dart';
import 'package:cuidapet/app/modules/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/auth/auth_module.dart';

class AppModule extends Module {
  
  @override
  void binds(i) {
    
  }
  @override
  //tods os binds que sentar nesse modulo, serao importados para aplicação como um todo, sem causar sujeira
  List<Module> get imports => CoreModule().imports;

  @override
  void routes(r) {
    r.module('/auth', module: AuthModule());
    r.module('/home', module: HomeModule());
  }
}
