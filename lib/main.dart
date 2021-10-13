import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nice_ui_tutorial/routes/routes.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(480, 854),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.home,
        unknownRoute: Routes.unknownRoute,
        getPages: Routes.routes,
      ),
    ),
  );
}
