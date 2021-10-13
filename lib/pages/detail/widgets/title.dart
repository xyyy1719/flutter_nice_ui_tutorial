import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPageTitle extends StatelessWidget {
  const DetailPageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Legs Toning",
          style: TextStyle(
            fontSize: 25.sp,
            color: const Color(0xfffefeff),
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          "and Glutes Workout",
          style: TextStyle(
            fontSize: 25.sp,
            color: const Color(0xfffefeff),
          ),
        )
      ],
    );
  }
}
