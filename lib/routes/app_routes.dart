import 'package:hakernewsapp/presentation/home_screen/home_screen.dart';
import 'package:hakernewsapp/presentation/home_screen/binding/home_binding.dart';
import 'package:hakernewsapp/presentation/splashscreen_screen/splashscreen_screen.dart';
import 'package:hakernewsapp/presentation/splashscreen_screen/binding/splashscreen_binding.dart';
import 'package:hakernewsapp/presentation/comments_screen/comments_screen.dart';
import 'package:hakernewsapp/presentation/comments_screen/binding/comments_binding.dart';
import 'package:hakernewsapp/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:hakernewsapp/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String homeScreen = '/home_screen';

  static String splashscreenScreen = '/splashscreen_screen';

  static String commentsScreen = '/comments_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: splashscreenScreen,
      page: () => SplashscreenScreen(),
      bindings: [
        SplashscreenBinding(),
      ],
    ),
    GetPage(
      name: commentsScreen,
      page: () => CommentsScreen(),
      bindings: [
        CommentsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashscreenScreen(),
      bindings: [
        SplashscreenBinding(),
      ],
    )
  ];
}
