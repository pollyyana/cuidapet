part of '../register_page.dart';

class _RegisterForm extends StatefulWidget {
  const _RegisterForm();

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CuidapetTextformfield(label: 'Login'),
          const SizedBox(
            height: 20,
          ),
          CuidapetTextformfield(
            label: 'Senha',
            obscureText: true,
          ),
          const SizedBox(
            height: 20,
          ),
          CuidapetTextformfield(
            label: 'Confirma Senha',
            obscureText: true,
          ),
          CdDefaultButton(label: 'Cadastrar', onPressed: (){},)
        ],
      ),
    );
  }
}
