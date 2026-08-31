import 'package:latlong2/latlong.dart';
import '../domain/tracked_bus.dart';

class TrackingService {

  Stream<TrackedBus> watchUser(String userId) {

    return Stream.periodic(const Duration(seconds: 5), (_) {
      return TrackedBus(id: '12', name: 'name', location: LatLng(12.12, 23.12), updatedAt: DateTime.timestamp());
    });
  }
}
