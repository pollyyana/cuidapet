import 'package:cuidapet/app/core/ui/extension/size_screen_extension.dart';
import 'package:flutter/material.dart';

class RoundedButtonIcon extends StatelessWidget {
  final GestureTapCallback onTap;
  final double width;
  final Color color;
  final IconData icon;
  final String label;

  const RoundedButtonIcon({
    super.key,
    required this.onTap,
    required this.width,
    required this.color,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 45.h,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(left: 0, right: 2),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 20.w,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: VerticalDivider(
                  color: Colors.white,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: EdgeInsets.zero,
                child: Text(
                  label,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0.sp),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
