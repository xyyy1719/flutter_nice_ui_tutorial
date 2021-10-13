import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageFocusTitle extends StatelessWidget {
  const HomePageFocusTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Area of focus",
      style: TextStyle(
        fontSize: 25.sp,
        fontWeight: FontWeight.w500,
        color: const Color(0xff302f51),
      ),
    );
  }
}
