import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailPageTitleBar extends StatelessWidget {
  const DetailPageTitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 20.sp,
            color: const Color(0xfffafafe),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.info_outline,
          size: 20.sp,
          color: const Color(0xfffafafe),
        ),
      ],
    );
  }
}
