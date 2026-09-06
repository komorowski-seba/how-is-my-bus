import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app/provider/user_tracking_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: HowIsMyBusApp(),
    ),
  );
}

class HowIsMyBusApp extends ConsumerWidget {
  const HowIsMyBusApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'How is my bus',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}