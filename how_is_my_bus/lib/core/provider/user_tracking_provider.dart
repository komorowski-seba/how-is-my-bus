import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:how_is_my_bus/core/domain/tracked_bus.dart';

import '../services/tracking_service.dart';

final trackingServiceProvider = Provider<TrackingService>((ref) {
  return TrackingService(
    FirebaseFirestore.instance,
  );
});

final userTrackingProvider =
StreamProvider.family<TrackedBus, String>((ref, userId) {
  final service = ref.watch(trackingServiceProvider);

  return service.watchUser(userId);
});
