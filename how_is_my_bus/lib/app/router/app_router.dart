import 'package:go_router/go_router.dart';

import '../view/home_page.dart';
import '../view/map_page.dart';


final appRouter = GoRouter(
  initialLocation: '/${HomePage.pageName}',
  routes: [
    GoRoute(
      path: '/${HomePage.pageName}',
      builder: (context, state) {
        return const HomePage();
      },
    ),

    GoRoute(
      path: '/${MapPage.pageName}',
      builder: (context, state) {
        return const MapPage();
      },
    ),
  ],
);