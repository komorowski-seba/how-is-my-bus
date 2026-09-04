import 'package:flutter/material.dart';
import 'package:how_is_my_bus/app/view/page_name.dart';
import 'package:how_is_my_bus/app/widgets/app_drawer.dart';

class MapPage extends StatelessWidget implements PageName {
  static String get pageName => 'Map';

  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageName),
      ),

      drawer: const DrawerApp(),

      body: Center(
        child: Text(
          pageName,
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}