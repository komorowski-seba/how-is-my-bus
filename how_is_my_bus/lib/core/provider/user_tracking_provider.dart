import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/tracked_user.dart';
import '../services/tracking_service.dart';

final trackingServiceProvider = Provider<TrackingService>((ref) {
  return TrackingService(
    FirebaseFirestore.instance,
  );
});

final userTrackingProvider =
StreamProvider.family<TrackedUser, String>((ref, userId) {
  final service = ref.watch(trackingServiceProvider);

  return service.watchUser(userId);
});
