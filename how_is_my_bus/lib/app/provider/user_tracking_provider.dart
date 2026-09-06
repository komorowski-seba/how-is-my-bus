import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:how_is_my_bus/core/domain/tracked_bus.dart';

import '../../core/services/tracking_service.dart';
import '../view/home_page.dart';
import '../view/map_page.dart';

part 'user_tracking_provider.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  final homePath = '/${HomePage.pageName}';
  final mapPath = '/${MapPage.pageName}';

  return GoRouter(
    initialLocation: '/${HomePage.pageName}',
    routes: [
      GoRoute(
        path: homePath,
        builder: (context, state) {
          return const HomePage();
        },
      ),

      GoRoute(
        path: mapPath,
        builder: (context, state) {
          return const MapPage();
        },
      ),
    ],
  );
}

@riverpod
TrackingService trackingService(Ref ref) {
  return TrackingService();
}

@riverpod
Stream<TrackedBus> busTracking(Ref ref, String busId) {
  final service = ref.watch(trackingServiceProvider);
  return service.watchBus(busId);
}
