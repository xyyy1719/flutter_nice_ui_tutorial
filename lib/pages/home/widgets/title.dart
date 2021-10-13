import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageTitle extends StatelessWidget {
  const HomePageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Training",
          style: TextStyle(
            fontSize: 30.sp,
            color: const Color(0xff302f51),
            fontWeight: FontWeight.w700,
          ),
        ),
        const Spacer(), // 用来撑开空间
        Icon(
          Icons.arrow_back_ios,
          size: 20.sp,
          color: const Color(0xff3b3c5c),
        ),
        const SizedBox(
          width: 10,
        ),
        Icon(
          Icons.calendar_today_outlined,
          size: 20.sp,
          color: const Color(0xff3b3c5c),
        ),
        const SizedBox(
          width: 15,
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 20.sp,
          color: const Color(0xff3b3c5c),
        ),
      ],
    );
  }
}
