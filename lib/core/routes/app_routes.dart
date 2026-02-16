import 'package:WinWin/Modules/categories/presentation/pages/categorytype_screen.dart';
import 'package:WinWin/Modules/main/presentation/pages/main_screen.dart';
import 'package:WinWin/Modules/onboarding/presentation/pages/onboard_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:WinWin/Modules/splash/splash_screen.dart';

class AppRoutes {
  //
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String main = '/main';
  static const String cateforyType = '/cateforyType';

  //
  static final routes = GoRouter(
    initialLocation: splash,
    routes: [
      // spash screen
      GoRoute(path: splash, builder: (context, state) => const SplashScreen()),
      // onboard screen
      GoRoute(
        path: onboarding,
        builder: (context, state) => const OnboardScreen(),
      ),
      // main screen
      GoRoute(path: main, builder: (context, state) => const MainScreen()),
      // categoryType screen
      GoRoute(
        path: cateforyType,
        builder: (context, state) => const CategorytypeScreen(),
      ),
    ],
  );
}
