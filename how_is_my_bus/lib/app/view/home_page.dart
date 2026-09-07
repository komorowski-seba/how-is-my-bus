import 'package:flutter/material.dart';
import 'package:how_is_my_bus/app/view/page_name.dart';

import '../widgets/app_drawer.dart';

class HomePage extends StatelessWidget implements PageName {
  const HomePage({super.key});

  static String get pageName => 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageName),
      ),

      drawer: const DrawerApp(),

      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (c, i) {
            final number = 100 + i;
            return ListTile(
              leading: const CircleAvatar(child: Icon(Icons.directions_bus),),
              title: Text('Bus $number'),
            );
          }
      ),
    );
  }
}