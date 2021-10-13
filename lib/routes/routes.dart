import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:nice_ui_tutorial/pages/404/page.dart';
import 'package:nice_ui_tutorial/pages/detail/page.dart';
import 'package:nice_ui_tutorial/pages/home/page.dart';

class Routes {
  static const home = '/';
  static const detail = '/detail';
  static const unknown = '/404';

  static final routes = [
    GetPage(
      name: home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: detail,
      page: () => const DetailPage(),
      transition: Transition.rightToLeftWithFade,
    ),
  ];

  static final unknownRoute = GetPage(
    name: unknown,
    page: () => const UnknownPage(),
  );
}
