import 'package:cuidapet/app/core/ui/icons/cuidapet_icons.dart';
import 'package:cuidapet/app/core/ui/widget/cuidapet_textformfield.dart';
import 'package:cuidapet/app/core/ui/widget/cd_default_button.dart';
import 'package:cuidapet/app/core/ui/widget/rounded_button_icon.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final testeEC = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CuidapetTextformfield(
                label: 'Login',
                obscureText: true,
                controller: testeEC,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'valor obrigatorio';
                  }
                  return null;
                },
              ),
              Text(testeEC.text),
              ElevatedButton(
                  onPressed: () {
                    formKey.currentState?.validate();
                    print(testeEC.text);
                  },
                  child: Text('validar')),
              Icon(Cuidapet.facebook),
              Icon(Cuidapet.google),
              RoundedButtonIcon(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('CLicou no Facebook'),
                  ));
                },
                icon: Cuidapet.facebook,
                label: 'Facebook',
                width: 130,
                color: Colors.blueAccent,
              ),
              RoundedButtonIcon(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('CLicou no Google'),
                  ));
                },
                icon: Cuidapet.google,
                label: 'Google',
                width: 130,
                color: Colors.orange,
              ),
              CdDefaultButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('clicou'),
                  ));
                },
                label: 'Entrar',
                // width: 200,
                // height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
