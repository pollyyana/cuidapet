import 'package:cuidapet/app/core/ui/extension/theme_extension.dart';
import 'package:flutter/material.dart';

class CuidapetTextformfield extends StatelessWidget {
  final String label;
  final bool obscureText;
  final ValueNotifier<bool> _obscureTextVN;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  CuidapetTextformfield({
    super.key,
    required this.label,
    this.obscureText = false,
    this.controller,
    this.validator,
  }) : _obscureTextVN = ValueNotifier<bool>(obscureText);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _obscureTextVN,
      builder: (_, obscureTextVNValue, child) {
        return TextFormField(
          controller: controller,
          obscureText: obscureTextVNValue,
          validator: validator,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(fontSize: 15, color: Colors.black),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              // gapPadding: 0,
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey)),
            suffixIcon: obscureText
                ? IconButton(
                    onPressed: () {
                      _obscureTextVN.value = !obscureTextVNValue;
                    },
                    icon: Icon(
                      obscureTextVNValue ? Icons.lock : Icons.lock_open,
                      color: context.primaryColor,
                    ),
                  )
                : null,
          ),
        );
      },
    );
  }
}
