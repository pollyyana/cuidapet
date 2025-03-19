import 'package:flutter/material.dart';

import 'package:cuidapet/app/core/ui/extension/theme_extension.dart';

class CdDefaultButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double borderRadius;
  final String label;
  final Color? color;
  final Color? labelColor;
  final double labelSize;
  final double padding;
  final double width;
  final double height;

  const CdDefaultButton({
    super.key,
    this.onPressed,
    this.borderRadius = 10,
    required this.label,
    this.color,
    this.labelColor,
     this.labelSize = 20,
     this.padding = 10,
     this.width = double.infinity,
     this.height = 66,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(padding),
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            backgroundColor: color ?? context.primaryColor),
        child: Text(
          label,
          style: TextStyle(color: labelColor ?? Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
