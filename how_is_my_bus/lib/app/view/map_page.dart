import 'package:flutter/material.dart';
import 'package:how_is_my_bus/app/view/page_name.dart';
import 'package:how_is_my_bus/app/widgets/app_drawer.dart';

import '../widgets/user_tracking_map.dart';

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
        child: UserTrackingMap(userId: '12'),
      ),
    );
  }
}