import 'package:cuidapet/app/core/ui/widget/cuidapet_textformfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

    LoginPage({super.key});

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
                validator: (String? value){
                  if(value == null || value.isEmpty ){
                    return 'valor obrigatorio';
                  }return null;
                },
              ),
              Text(testeEC.text),
              ElevatedButton(onPressed: (){
                formKey.currentState?.validate();
                print(testeEC.text);
              }, child: Text('validar'))
            ],
          ),
        ),
      ),
    );
  }
}
