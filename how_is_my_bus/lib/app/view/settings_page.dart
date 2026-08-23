import 'package:flutter/material.dart';
import 'package:how_is_my_bus/app/widgets/app_drawer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),

      drawer: const DrawerApp(),

      body: const Center(
        child: Text(
          'Settings View',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}