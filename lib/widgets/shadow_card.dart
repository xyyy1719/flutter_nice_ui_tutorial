import 'package:flutter/material.dart';

class ShadowCard extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final double shadowRadius;
  final Color color;
  final Color shadowColor;
  final Widget? child;

  const ShadowCard({
    Key? key,
    required this.width,
    required this.height,
    this.radius = 10,
    this.shadowRadius = 3,
    this.color = Colors.white,
    this.shadowColor = Colors.blue,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          // 下方和右边的阴影
          BoxShadow(
            offset: const Offset(5, 5),
            blurRadius: shadowRadius,
            color: shadowColor.withOpacity(0.3),
          ),
          // 上方和左边的阴影
          BoxShadow(
            offset: const Offset(-5, -5),
            blurRadius: shadowRadius,
            color: shadowColor.withOpacity(0.3),
          )
        ],
        color: Colors.white,
      ),
      child: child,
    );
  }
}
