import 'package:cuidapet/app/core/ui/extension/size_screen_extension.dart';
import 'package:cuidapet/app/core/ui/widget/cd_default_button.dart';
import 'package:cuidapet/app/core/ui/widget/cuidapet_textformfield.dart';
import 'package:flutter/material.dart';

part 'widget/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Usuario'),
        elevation: 0,
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
           SizedBox(
                height: 20,
              ),
              Center(
                child: Image.asset(
                    'assets/images/logo.png',
                    width: 162.w,
                    fit: BoxFit.fill,
                  ),
              ),
              const SizedBox(
                 height: 20,
              ),
              _RegisterForm()
            ],
          ),
        ),
      ),
    );
  }
}
