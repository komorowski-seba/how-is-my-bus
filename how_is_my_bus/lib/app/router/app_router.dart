import 'package:go_router/go_router.dart';

import '../view/home_page.dart';
import '../view/settings_page.dart';


final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) {
        return const HomePage();
      },
    ),

    GoRoute(
      path: '/settings',
      builder: (context, state) {
        return const SettingsPage();
      },
    ),
  ],
);