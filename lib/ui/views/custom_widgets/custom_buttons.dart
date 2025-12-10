import 'package:flutter/material.dart';

class CustomButtons1 extends StatelessWidget {
  Color? borderColor;
  Color? boxColor;
  double? borderRadius;
  Widget? child;
  LinearGradient? linearGradient;
  VoidCallback? onTap;

  CustomButtons1({
    required this.child,
    this.borderColor,
    this.borderRadius,
    this.boxColor,
    this.linearGradient,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          gradient:
              linearGradient ??
              LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerLeft,
                colors: [Colors.transparent, Colors.transparent],
              ),
          boxShadow: [
            BoxShadow(
              spreadRadius: 1.1,
              blurRadius: 4.0,
              color: Color(0xff000040).withValues(alpha: 0.3),
              // blurStyle: BlurStyle.solid,
              offset: Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
          color: boxColor ?? Color(0xffE12D59),
          border: Border.all(
            width: 1,
            color: borderColor ?? Colors.transparent,
          ),
        ),
        child: child,
      ),
    );
  }
}
