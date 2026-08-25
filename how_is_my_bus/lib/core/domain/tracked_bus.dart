import 'package:latlong2/latlong.dart';

class TrackedBus {
  final String id;
  final String name;
  final String? avatarUrl;
  final LatLng location;
  final DateTime updatedAt;

  const TrackedBus({
    required this.id,
    required this.name,
    this.avatarUrl,
    required this.location,
    required this.updatedAt,
  });

  TrackedBus copyWith({
    String? name,
    String? avatarUrl,
    LatLng? location,
    DateTime? updatedAt,
  }) {
    return TrackedBus(
      id: id,
      name: name ?? this.name,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      location: location ?? this.location,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
