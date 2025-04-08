part of '../login_page.dart';

class _LoginForm extends StatefulWidget {
  const _LoginForm();

  @override
  State<_LoginForm> createState() => __LoginFormState();
}

class __LoginFormState extends State<_LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        CuidapetTextformfield(label: 'Login'),
        const SizedBox(
          height: 20,
        ),
        CuidapetTextformfield(label: 'Senha', obscureText: true,),
        const SizedBox(
          height: 20,
        ),
        CdDefaultButton(
          label: 'Entrar',
          onPressed: () {
            Loader.show();
            Future.delayed(Duration(seconds: 2),() => Loader.hide());
          },
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    ));
  }
}
