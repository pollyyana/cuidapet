import 'package:cuidapet/app/models/user_model.dart';
import 'package:flutter/material.dart';

import 'package:cuidapet/app/core/ui/extension/size_screen_extension.dart';
import 'package:cuidapet/app/modules/core/auth/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

class AuthHomePage extends StatefulWidget {
  final AuthStore _authStore;

  const AuthHomePage({
    super.key,
    required AuthStore authStore,
  }) : _authStore = authStore;

  @override
  State<AuthHomePage> createState() => _AuthHomePageState();
}

class _AuthHomePageState extends State<AuthHomePage> {
  @override
  void initState() {
    super.initState();

    //reaction esculta..
    reaction<UserModel?>((_) => widget._authStore.userLogged, (userLogged) {
      if (userLogged != null && userLogged.email.isNotEmpty) {
         Modular.to.navigate('/home');
      } else {
        Modular.to.navigate('/auth/login/');
      }
    });
    //o addpost.. roda ao final de carregar a pagina evitando erros 
    // Aguarda a construção completa da árvore de widgets antes de executar a ação.
  // Isso garante que o método loadUser() só seja chamado após a primeira renderização,
  // evitando problemas ao acessar o contexto ou o estado do widget prematuramente. 
    WidgetsBinding.instance.addPostFrameCallback((_) { 
      widget._authStore.loadUserLogged();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 162.w,
          height: 130.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
