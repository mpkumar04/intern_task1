import 'package:flutter/material.dart';
import 'core/theme/theme.dart';
import 'core/theme/text_styles.dart';
import 'core/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),

            // Greeting
            const Text("Hello Jenna,", style: AppTextStyles.heading1),
            const SizedBox(height: 4),
            const Text("Let’s start exercising", style: AppTextStyles.subtitle),

            const SizedBox(height: 24),

            // Exercise cards (two side by side)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: _buildExerciseCard('assets/images/mCard1.jpg')),
                const SizedBox(width: 12),
                Expanded(child: _buildExerciseCard('assets/images/mCard2.jpg')),
              ],
            ),

            const SizedBox(height: 30),
            const Text("Recommended for you", style: AppTextStyles.heading2),
            const SizedBox(height: 12),

            // Horizontal recommendation list
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildSmallImage('assets/images/r1.jpg'),
                  _buildSmallImage('assets/images/r2.jpg'),
                  _buildSmallImage('assets/images/r3.jpg'),
                ],
              ),
            ),

            const SizedBox(height: 30),
            _buildLargeCard(
              'assets/images/personal_trainer.jpg',
              'Find me a personal Trainer',
            ),

            const SizedBox(height: 18),
            _buildLargeCard(
              'assets/images/group_class.jpg',
              'Find me group classes',
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 Exercise Card
  Widget _buildExerciseCard(String imagePath) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.red800,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onPressed: () {},
            child: const Text("Start", style: AppTextStyles.tButton),
          ),
        ),
      ),
    );
  }

  // 🔹 Recommended Small Image
  Widget _buildSmallImage(String imagePath) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      width: 110,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // 🔹 Large Bottom Cards
  Widget _buildLargeCard(String imagePath, String title) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 5),
          ),
        ],
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.5),
              Colors.transparent,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(title, style: AppTextStyles.heading2),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: const Text("Explore now", style: AppTextStyles.tButton),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
