import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nice_ui_tutorial/pages/home/widgets/banner.dart';
import 'package:nice_ui_tutorial/pages/home/widgets/focus.dart';
import 'package:nice_ui_tutorial/pages/home/widgets/focus_title.dart';
import 'package:nice_ui_tutorial/pages/home/widgets/next_workout.dart';
import 'package:nice_ui_tutorial/pages/home/widgets/subtitle.dart';
import 'package:nice_ui_tutorial/pages/home/widgets/title.dart';

// 主页UI
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbfcff),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 70.h,
          left: 30.w,
          right: 30.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomePageTitle(),
            SizedBox(height: 30.h),
            const HomePageSubtitle(),
            SizedBox(height: 20.h),
            const HomePageNextWorkout(),
            SizedBox(height: 5.h),
            const HomePageBanner(),
            SizedBox(height: 25.h),
            const HomePageFocusTitle(),
            SizedBox(height: 15.h),
            const HomePageFocus(),
            SizedBox(height: 50.h),
          ],
        ),
      ),
    );
  }
}
