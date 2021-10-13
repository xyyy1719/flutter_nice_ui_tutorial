import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nice_ui_tutorial/widgets/shadow_card.dart';

import '../controller.dart';

class HomePageFocus extends StatelessWidget {
  const HomePageFocus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) => Wrap(
          spacing: 20.w,
          runSpacing: 20.h,
          children: _.focusAreas
              .map(
                (area) => ShadowCard(
                  width: 120.w,
                  height: 120.h,
                  shadowColor: const Color(0xff6985e8),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          area["img"],
                          width: 90.w,
                          height: 90.h,
                        ),
                        Text(
                          area["title"],
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xff6588f4),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
