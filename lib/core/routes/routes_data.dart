import 'package:go_router/go_router.dart';
import 'package:WinWin/features/splash/splash_screen.dart';

class RoutesData {
  //
  static const String splash = '/splash';
  static const String home = '/home';

  //
  static final routes = GoRouter(
    initialLocation: splash,
    routes: [
      // spash screen
      GoRoute(path: splash, builder: (context, state) => const SplashScreen()),
    ],
  );
}
