import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Import your screens
import '../../screens/splash_screen.dart';
import '../../screens/dashboard_screen.dart';
import '../../screens/daily_workout_screen.dart';
import '../../screens/daily_progress_screen.dart';

/// Handles all app navigation using GoRouter.
class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      // 🏁 Splash Screen
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => _buildFadeTransitionPage(
          const SplashScreen(),
        ),
      ),

      // 🏋️ Dashboard Screen
      GoRoute(
        path: '/dashboard',
        pageBuilder: (context, state) => _buildFadeTransitionPage(
          const DashboardScreen(),
        ),
      ),

      // 💪 Daily Workout Screen
      GoRoute(
        path: '/daily-workout',
        pageBuilder: (context, state) => _buildFadeTransitionPage(
          const DailyWorkoutScreen(),
        ),
      ),

      // 📈 Daily Progress Screen
      GoRoute(
        path: '/daily-progress',
        pageBuilder: (context, state) => _buildFadeTransitionPage(
          const DailyProgressScreen(),
        ),
      ),
    ],
  );

  /// Custom fade animation for smooth transitions
  static CustomTransitionPage _buildFadeTransitionPage(Widget child) {
    return CustomTransitionPage(
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          ),
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 350),
    );
  }
}
