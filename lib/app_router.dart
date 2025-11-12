import 'package:go_router/go_router.dart';
// import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/daily_workout_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', name: 'splash', builder: (ctx, state) => const SplashScreen()),
      GoRoute(path: '/dashboard', name: 'dashboard', builder: (ctx, state) => const DashboardScreen()),
      GoRoute(path: '/daily-workout', name: 'dailyWorkout', builder: (ctx, state) => const DailyWorkoutScreen()),
    ],
  );
}
