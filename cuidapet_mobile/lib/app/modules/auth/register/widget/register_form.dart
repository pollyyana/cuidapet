part of '../register_page.dart';

class _RegisterForm extends StatefulWidget {
  const _RegisterForm();

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  final RegisterController controller = Modular.get<RegisterController>();

  final _formKey = GlobalKey<FormState>();
  final _loginEC = TextEditingController();
  final _passwordEC = TextEditingController();

  @override
  void dispose() {
    _loginEC.dispose();
    _passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CuidapetTextformfield(
            label: 'Login',
            controller: _loginEC,
            validator: Validatorless.multiple([
              Validatorless.required('Login Obrigatório'),
              Validatorless.email('Login deve ser um e-mail válido'),
            ]),
          ),
          const SizedBox(height: 20),
          CuidapetTextformfield(
            label: 'Senha',
            obscureText: true,
            controller: _passwordEC,
            validator: Validatorless.multiple([
              Validatorless.required('Senha Obrigatória'),
              Validatorless.min(6, 'Senha precisa ter pelo menos 6 caracteres'),
            ]),
          ),
          const SizedBox(height: 20),
          CuidapetTextformfield(
            label: 'Confirma senha',
            obscureText: true,
            validator: Validatorless.multiple([
              Validatorless.required('Confirma senha obrigatória'),
              Validatorless.min(6, 'Confirma senha precisa ter pelo menos 6 caracteres'),
              Validatorless.compare(_passwordEC, 'Senha e confirma senha não são iguais'),
            ]),
          ),
          const SizedBox(height: 20),
          CdDefaultButton(
            label: 'Cadastrar',
            onPressed: () {
              final formValid = _formKey.currentState?.validate() ?? false;
              if (formValid) {
                controller.register(
                  email: _loginEC.text,
                  password: _passwordEC.text,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}