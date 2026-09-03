import 'package:flutter/material.dart';
import 'package:how_is_my_bus/app/widgets/app_drawer.dart';

class MapPage extends StatelessWidget {
  static const pageName = 'Map';

  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(pageName),
      ),

      drawer: const DrawerApp(),

      body: const Center(
        child: Text(
          pageName,
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}