import 'package:flutter/material.dart';
import 'app_router.dart';
import 'core/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter.router;

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Fitness App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routerConfig: router,
    );
  }
}
