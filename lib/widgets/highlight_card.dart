import 'package:flutter/material.dart';

class HighlightCard extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Widget? child;

  const HighlightCard({
    Key? key,
    required this.width,
    required this.height,
    this.color = Colors.blue,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        // 定义渐变的背景色
        gradient: LinearGradient(
          colors: [color, color.withOpacity(0.4)],
          begin: Alignment.bottomLeft, // 颜色最深处
          end: Alignment.centerRight, //颜色最浅处
        ),
        // 定义底部阴影
        boxShadow: [
          BoxShadow(
            offset: const Offset(5, 10), // 底部5, 右边10
            blurRadius: 20,
            color: color.withOpacity(0.3),
          )
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
          topRight: Radius.circular(80),
        ),
      ),
      child: child,
    );
  }
}
