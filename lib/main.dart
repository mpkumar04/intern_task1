import 'package:flutter/material.dart';
import '/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Fitness App',
      theme: ThemeData.dark(),
      routerConfig: AppRouter.router,
    );
  }
}
