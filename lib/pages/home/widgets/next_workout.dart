import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nice_ui_tutorial/widgets/highlight_card.dart';

class HomePageNextWorkout extends StatelessWidget {
  const HomePageNextWorkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xff0f17ad);
    const Color textColor = Color(0xfff4f5fd);

    return HighlightCard(
      width: 1.sw,
      height: 220.h,
      color: color,
      child: Container(
        padding:
            EdgeInsets.only(left: 20.w, top: 25.h, right: 25.w, bottom: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Next workout",
              style: TextStyle(
                fontSize: 16.sp,
                color: textColor,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              "Legs Toning",
              style: TextStyle(
                fontSize: 25.sp,
                color: textColor,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              "and Glutes Workout",
              style: TextStyle(
                fontSize: 25.sp,
                color: textColor,
              ),
            ),
            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.timer,
                  size: 20.sp,
                  color: textColor,
                ),
                SizedBox(width: 10.w),
                Text(
                  "60 min",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: textColor,
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(4, 8),
                        blurRadius: 10,
                        color: color.withOpacity(0.6),
                      )
                    ],
                  ),
                  child: Icon(
                    Icons.play_circle_fill,
                    size: 60.sp,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
