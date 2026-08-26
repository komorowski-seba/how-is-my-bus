import 'package:latlong2/latlong.dart';

import '../domain/tracked_bus.dart';

class TrackingService {

  Stream<TrackedBus> watchUser(String userId) {
    // return _firestore
    //     .collection('users')
    //     .doc(userId)
    //     .snapshots()
    //     .map((snapshot) {
    //       final data = snapshot.data();
    //
    //       if (data == null) {
    //         throw Exception('Użytkownik nie istnieje');
    //       }
    //
    //       return TrackedBus(
    //         id: snapshot.id,
    //         name: data['name'] as String? ?? '',
    //         avatarUrl: data['avatarUrl'] as String?,
    //         location: LatLng(
    //           (data['latitude'] as num).toDouble(),
    //           (data['longitude'] as num).toDouble(),
    //         ),
    //         updatedAt:
    //         (data['updatedAt'] as Timestamp).toDate(),
    //       );
    //     });
    return TrackedBus(id: 12, name: 'name', location: Latlng(12.12, 23.12), updatedAt: DateTime(""));
  }
}
