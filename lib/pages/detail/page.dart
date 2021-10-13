import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nice_ui_tutorial/pages/detail/widgets/title.dart';
import 'package:nice_ui_tutorial/pages/detail/widgets/title_bar.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xff0f17ad),
              const Color(0xff0f17ad).withOpacity(0.4),
            ],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 1.sw,
              height: 300.h,
              padding: EdgeInsets.only(top: 70.h, left: 30.w, right: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DetailPageTitleBar(),
                  SizedBox(height: 30.h),
                  const DetailPageTitle(),
                  SizedBox(height: 50.h),
                  Row(
                    children: [
                      Container(
                        width: 90.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff6588f4),
                              Color(0xff6d8dea),
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.timer,
                              size: 20.sp,
                              color: const Color(0xfffafafe),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "68 min",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xfffafafe),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Container(
                        width: 250.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff6588f4),
                              Color(0xff6d8dea),
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.handyman_outlined,
                              size: 20.sp,
                              color: const Color(0xfffafafe),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Resistent band, kettebell",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xfffafafe),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(70)),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30.h),
                    Row(
                      children: [
                        SizedBox(width: 30.w),
                        Text(
                          "Circuit 1: Legs Toning",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff2f2f51),
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.loop,
                          size: 30.sp,
                          color: const Color(0xff6d8dea),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "3 sets",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color(0xff9999a9),
                          ),
                        ),
                        SizedBox(width: 20.w),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
