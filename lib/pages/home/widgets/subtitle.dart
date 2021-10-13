import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nice_ui_tutorial/routes/routes.dart';

class HomePageSubtitle extends StatelessWidget {
  const HomePageSubtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Your program",
          style: TextStyle(
            fontSize: 20.sp,
            color: const Color(0xff414160),
            fontWeight: FontWeight.w700,
          ),
        ),
        const Spacer(),
        Text(
          "Details",
          style: TextStyle(
            fontSize: 20.sp,
            color: const Color(0xff6588f4),
          ),
        ),
        SizedBox(width: 5.w),
        InkWell(
          onTap: () {
            Get.toNamed(Routes.detail);
          },
          child: Icon(
            Icons.arrow_forward,
            size: 20.sp,
            color: const Color(0xff3b3c5c),
          ),
        ),
      ],
    );
  }
}
