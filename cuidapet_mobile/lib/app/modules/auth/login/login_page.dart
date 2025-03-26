import 'package:cuidapet/app/core/ui/extension/size_screen_extension.dart';
import 'package:cuidapet/app/core/ui/extension/theme_extension.dart';
import 'package:cuidapet/app/core/ui/icons/cuidapet_icons.dart';
import 'package:cuidapet/app/core/ui/widget/cd_default_button.dart';
import 'package:cuidapet/app/core/ui/widget/cuidapet_textformfield.dart';
import 'package:cuidapet/app/core/ui/widget/rounded_button_icon.dart';
import 'package:flutter/material.dart';

part 'widgets/login_form.dart';
part 'widgets/login_register_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            // Text(Enviroments.param('base_url')?? ''), // teste env
            SizedBox(
              height: 50.h,
            ),
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 162.w,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _LoginForm(),
            const SizedBox(
              height: 8,
            ),
            OrSeparator(),
            _LoginRegisterButton(),
          ],
        ),
      ),
    );
  }
}

class OrSeparator extends StatelessWidget {
  const OrSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: context.primaryColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'OU',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
              color: context.primaryColor,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            color: context.primaryColor,
          ),

        ),
      ],
    );
  }
}
