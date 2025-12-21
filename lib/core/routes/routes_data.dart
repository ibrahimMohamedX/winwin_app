import 'package:WinWin/features/onboarding/onboard_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:WinWin/features/splash/splash_screen.dart';

class RoutesData {
  //
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';

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
    ],
  );
}
