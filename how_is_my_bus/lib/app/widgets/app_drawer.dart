import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:how_is_my_bus/app/view/home_page.dart';
import 'package:how_is_my_bus/app/view/map_page.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;

    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.flutter_dash,
                      size: 50,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Hello hi',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                )
            ),

            ListTile(
              selected: location == '/${HomePage.pageName}',
              leading: const Icon(Icons.home),
              title: const Text('home'),
              onTap: () {
                context.go('/${HomePage.pageName}');
              },
            ),

            ListTile(
              selected: location == '/${MapPage.pageName}',
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                context.go('/${MapPage.pageName}');
              },
            )
          ],
        )
      )
    );
  }

}