import 'package:latlong2/latlong.dart';
import '../domain/tracked_bus.dart';

class TrackingService {
  Stream<TrackedBus> watchBus(String busId) {
    return Stream.periodic(const Duration(seconds: 5), (_) {
      return TrackedBus(
        id: busId,
        name: 'Bus $busId',
        location: LatLng(52.2297, 21.0122),
        updatedAt: DateTime.timestamp(),
      );
    });
  }
}
