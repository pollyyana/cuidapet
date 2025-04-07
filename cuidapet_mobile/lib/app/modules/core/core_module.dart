import 'package:cuidapet/app/core/local_storage/local_storage.dart';
import 'package:cuidapet/app/core/local_storage/shared_preferences/shared_preferences_local_storage_impl.dart';
import 'package:cuidapet/app/core/logger/app_logger.dart';
import 'package:cuidapet/app/core/logger/app_logger_impl.dart';
import 'package:cuidapet/app/core/rest_client/dio/dio_rest_client.dart';
import 'package:cuidapet/app/core/rest_client/rest_client.dart';

import 'package:cuidapet/app/modules/core/auth/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';



class CoreModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton<AuthStore>(AuthStore.new);
    i.addLazySingleton<RestClient>(DioRestClient.new);
    i.addLazySingleton<AppLogger>(AppLoggerImpl.new);
    i.addLazySingleton<LocalStorage>(SharedPreferencesLocalStorageImp.new);


 // Registra AuthStore
  }
}







//utilizado por mais de um ponto do sistema(alicerce)
//modulo apenas de import de bindings

/*
Esse método está adicionando o AuthStore como um Singleton.
Isso significa que haverá apenas uma instância de AuthStore em toda a aplicação.
Quando for necessário acessar AuthStore, o Modular vai fornecer sempre a mesma instância.
*/










/*

Qual a diferença?
🔹 addSingleton<AuthStore>(AuthStore.new);
Cria a instância imediatamente quando o módulo é carregado.
A instância existe na memória o tempo todo, mesmo que ninguém esteja usando.

🔹 addLazySingleton<AuthStore>(AuthStore.new);

Só cria a instância quando for usada pela primeira vez.
Economiza memória, pois só carrega quando necessário.
*/

