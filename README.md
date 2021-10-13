# nice_ui_tutorial

用Flutter做出好看UI的一个示例

![nice_ui_tutorial_demo](https://gitee.com/xyyy1719/my_md_pics/raw/master/pics/nice_ui_tutorial_demo.gif)



##### 使用的库

1. get
2. flutter_screenutil



##### 知识点

###### 使用flutter_screenutil做屏幕尺寸适配

```dart
main.dart

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
```



###### Spacer()用来撑开空间

![image-20211013153514760](https://gitee.com/xyyy1719/my_md_pics/raw/master/pics/image-20211013153514760.png)

```dart
Widget build(BuildContext context) {
    return Row(
        children: [
            Text(
                "Training",
                // ...
            ),
            const Spacer(),
            Icon(
                Icons.arrow_back_ios,
                size: 20.sp,
                color: const Color(0xff3b3c5c),
            ),
            // ...
        ],
    );
}
```



###### BoxDecoration的gradient用来设置背景的渐变色

```dart
gradient: LinearGradient(
    colors: [color, color.withOpacity(0.4)],
    begin: Alignment.bottomLeft, // 颜色最深处
    end: Alignment.centerRight, //颜色最浅处
),
```



###### BoxDecoration的boxShadow用来设置底层阴影

```dart
boxShadow: [
    // 下方和右边的阴影
    BoxShadow(
        offset: const Offset(5, 5),
        blurRadius: shadowRadius,
        color: shadowColor.withOpacity(0.3),
    ),
    // 上方和左边的阴影
    BoxShadow(
        offset: const Offset(-5, -5),
        blurRadius: shadowRadius,
        color: shadowColor.withOpacity(0.3),
    )
],
```

 

###### BoxDecoration的borderRadius用来设置边角弧度

```dart
// 为四个角分别设置弧度
borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(10),
    bottomLeft: Radius.circular(10),
    bottomRight: Radius.circular(10),
    topRight: Radius.circular(80),
),
// 为四个角设置统一的弧度
borderRadius: BorderRadius.circular(20),
```



###### 播放按钮示例

![image-20211013155538961](https://gitee.com/xyyy1719/my_md_pics/raw/master/pics/image-20211013155538961.png)

```dart
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
```



###### JSON文件的读取

需要在pubspec.yaml的assets下定义JSON文件的路径

```yaml
assets:
	- assets/jsons/
```

info.json文件的内容

```json
[
    {
        "title": "Glues",
        "img": "assets/images/area1.png"
    },
    {
        "title": "Abs",
        "img": "assets/images/area2.png"
    },
    {
        "title": "Legs",
        "img": "assets/images/area3.png"
    }
]
```

在Controller中读取JSON文件的内容

```dart
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List focusAreas = [];

  @override
  void onInit() {
    super.onInit();
    _loadJsonData();
  }

  void _loadJsonData() async {
    String jsonString = await rootBundle.loadString("assets/jsons/info.json");
    focusAreas = json.decode(jsonString);
    update();
  }
}
```

