import 'package:mobx/mobx.dart';

import '../../../models/user_model.dart';

part 'auth_store.g.dart';

// ✔ MobX está sendo usado para gerenciar estado de autenticação.
// ✔ @readonly cria um getter automático para _userLogged, tornando-o acessível, mas não modificável diretamente.
// ✔ O MobX vai permitir que qualquer widget que esteja observando AuthStore seja atualizado automaticamente quando _userLogged mudar.
// classe aonde centraliza todo o trabalho com login permanente com usuario logado
class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {

  //atributo sejam criads automaticamente com metodos get automaticamente(apenas leitura)
  @readonly   
  UserModel? _userLogged; 

  @action 
  Future<void> loadUserLogged()async {
    //UserModel.empy é um usario nao logado
    _userLogged = UserModel.empty();
    // UserModel _userLogged = UserModel.empty();
  }
}
