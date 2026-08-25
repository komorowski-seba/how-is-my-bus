import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:latlong2/latlong.dart';

import '../domain/tracked_bus.dart';
import '../models/tracked_user.dart';

class TrackingService {
  final FirebaseFirestore _firestore;

  TrackingService(this._firestore);

  Stream<TrackedBus> watchUser(String userId) {
    return _firestore
        .collection('users')
        .doc(userId)
        .snapshots()
        .map((snapshot) {
      final data = snapshot.data();

      if (data == null) {
        throw Exception('Użytkownik nie istnieje');
      }

      return TrackedBus(
        id: snapshot.id,
        name: data['name'] as String? ?? '',
        avatarUrl: data['avatarUrl'] as String?,
        location: LatLng(
          (data['latitude'] as num).toDouble(),
          (data['longitude'] as num).toDouble(),
        ),
        updatedAt:
        (data['updatedAt'] as Timestamp).toDate(),
      );
    });
  }
}
