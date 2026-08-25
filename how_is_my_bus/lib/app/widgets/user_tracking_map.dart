import 'package:flutter/cupertino.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class UserTrackingMap extends ConsumerWidget {
  final String userId;

  const UserTrackingMap({
    super.key,
    required this.userId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(
      userTrackingProvider(userId),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lokalizacja użytkownika'),
      ),
      body: userAsync.when(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stack) => Center(
          child: Text('Błąd: $error'),
        ),
        data: (user) {
          return FlutterMap(
            options: MapOptions(
              initialCenter: user.location,
              initialZoom: 14,
            ),
            children: [
              TileLayer(
                urlTemplate:
                'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName:
                'com.example.mytrackingapp',
              ),

              MarkerLayer(
                markers: [
                  Marker(
                    point: user.location,
                    width: 60,
                    height: 60,
                    child: UserLocationMarker(
                      user: user,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
