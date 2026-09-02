import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:how_is_my_bus/core/domain/tracked_bus.dart';
import '../services/tracking_service.dart';

part 'user_tracking_provider.g.dart';

@riverpod
TrackingService trackingService(TrackingServiceRef ref) {
  return TrackingService();
}

@riverpod
Stream<TrackedBus> busTracking(BusTrackingRef ref, String busId) {
  final service = ref.watch(trackingServiceProvider);
  return service.watchBus(busId);
}
