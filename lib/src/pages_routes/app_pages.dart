
import 'package:get/get.dart';
import 'package:quitanda_app/src/pages/auth/sign_screen.dart';
import 'package:quitanda_app/src/pages/auth/sign_up_screen.dart';
import 'package:quitanda_app/src/pages/base/base_screen.dart';
import 'package:quitanda_app/src/pages/splash/splash_screen.dart';


/* -------- Mapeando telas --------- */
abstract class AppPages{
  static final pages = <GetPage>[
    GetPage( 
      page: () => const SplashScreen(),
      name: PagesRoutes.splashRoute,
    ),

    GetPage( 
      page: () => SignInScreen(),
      name: PagesRoutes.signInRoute,
    ),

    GetPage( 
      page: () => SignUpScreen(),
      name: PagesRoutes.signUpRoute,
    ),

    GetPage( 
      page: () => const BaseScreen(),
      name: PagesRoutes.baseRoute,
    ),
  ];
}

abstract class PagesRoutes{
  static const String splashRoute = '/splash';
  static const String signInRoute = '/signin';
  static const String signUpRoute = '/signup';
  static const String baseRoute = '/';
}