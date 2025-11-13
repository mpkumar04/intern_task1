import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../core/theme/colors.dart';
import '../core/theme/text_styles.dart';

class DailyProgressScreen extends StatelessWidget {
  const DailyProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Column(
          children: [
            // Gradient background & content
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF7A0000),
                      Color.fromARGB(255, 0, 0, 0),
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    // ✅ Back button (navigates to DailyWorkoutScreen)
                    Positioned(
                      top: 12,
                      left: 12,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => GoRouter.of(context).go('/daily-workout'),
                      ),
                    ),

                    // Title
                    const Positioned(
                      top: 50,
                      left: 120,
                      child: Text(
                        'Daily Progress',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // Woman image
                    Positioned(
                      right: -60,
                      bottom: 0,
                      child: Image.asset(
                        'assets/images/model.png',
                        height: 580,
                        fit: BoxFit.contain,
                      ),
                    ),

                    // Stats on left
                    Positioned(
                      left: 20,
                      top: 320,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          _ProgressStat(title: 'Time Spent', value: '05:85'),
                          SizedBox(height: 20),
                          _ProgressStat(title: 'Heart Rate', value: '05:85'),
                          SizedBox(height: 20),
                          _ProgressStat(title: 'Calories', value: '850'),
                          SizedBox(height: 20),
                          _ProgressStat(title: 'Steps', value: '1200'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Bottom bar
            Container(
              color: AppColors.black,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  _BottomInfo(icon: Icons.access_time, label: '3hrs'),
                  _BottomInfo(icon: Icons.location_on, label: '5km'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProgressStat extends StatelessWidget {
  final String title;
  final String value;
  const _ProgressStat({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class _BottomInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  const _BottomInfo({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white, size: 20),
        const SizedBox(width: 6),
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      ],
    );
  }
}
