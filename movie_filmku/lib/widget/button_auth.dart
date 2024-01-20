import 'package:flutter/material.dart';
import 'package:movie_filmku/theme.dart';

class ButtonAuth extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  final Widget child;
  final EdgeInsets margin;
  final Function()? onTap;

  const ButtonAuth({
    Key? key,
    required this.color,
    required this.height,
    required this.width,
    required this.child,
    required this.margin,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        margin: margin,
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
