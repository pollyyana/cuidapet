part of '../login_page.dart';

class _LoginRegisterButton extends StatelessWidget {
  const _LoginRegisterButton();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      spacing: 10, //Espaço entre os elementos
      runSpacing: 10, //espaço de cima pra baixo
      children: [
        RoundedButtonIcon(
          onTap: () {},
          width: .42.sw,
          color: Color(0xff4267b3),
          icon: Cuidapet.facebook,
          label: 'Facebook',
        ),
        RoundedButtonIcon(
          onTap: () {},
          width: .42.sw,
          color: Color(0xffe15031),
          icon: Cuidapet.facebook,
          label: 'Google',
        ),
        RoundedButtonIcon(
          onTap: () {},
          width: .42.sw,
          color: context.primaryColorDark,
          icon: Cuidapet.facebook,
          label: 'Cadastre-se',
        ),
      ],
    );
  }
}
