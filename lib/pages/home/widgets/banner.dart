import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nice_ui_tutorial/widgets/shadow_card.dart';

class HomePageBanner extends StatelessWidget {
  const HomePageBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double topMargin = 40.h;

    return SizedBox(
      width: 1.sw,
      height: 160.h,
      child: Stack(
        children: [
          // 底部阴影容器
          Padding(
            padding: EdgeInsets.only(top: topMargin),
            child: ShadowCard(
              width: 1.sw,
              height: 120.h,
              radius: 20,
              shadowRadius: 5,
              shadowColor: const Color(0xff6985e8),
            ),
          ),
          // 背景图片
          Container(
            width: 200.w,
            height: 120.h,
            margin: EdgeInsets.only(top: topMargin),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage("assets/images/back.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          // 跑步小人
          Container(
            width: 140.w,
            height: 140.w,
            margin: EdgeInsets.only(left: topMargin),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/runner.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          // 文字部分
          Container(
            width: double.maxFinite,
            height: 100.h,
            margin: EdgeInsets.only(left: 180.w, top: 60.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "You are doing great",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff6588f4),
                  ),
                ),
                SizedBox(height: 10.h),
                RichText(
                  text: TextSpan(
                    text: "keep it up\n",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xffa2a2b1),
                    ),
                    // RichText中定义的style对其子元素也生效
                    children: const [
                      TextSpan(text: "stick to your plan"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
