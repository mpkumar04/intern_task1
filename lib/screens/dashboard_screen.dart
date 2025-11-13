import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../core/theme/text_styles.dart';
import '../core/theme/colors.dart';
// import '../core/utils/app_sizes.dart';
import '../widgets/exercise_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text("Hello Jenna,", style: AppTextStyles.heading1),
            const SizedBox(height: 4),
            const Text("Let’s start exercising", style: AppTextStyles.subtitle),
            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ExerciseCard(
                    imagePath: 'assets/images/mCard1.jpg',
                    onStart: () {
                      // first card behavior — keep as original (snack or other)
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('First card tapped')),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ExerciseCard(
                    imagePath: 'assets/images/mCard2.jpg',
                    onStart: () {
                      GoRouter.of(context).push('/daily-workout');
                    },
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),
            const Text("Recommended for you", style: AppTextStyles.heading2),
            const SizedBox(height: 12),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _smallImage('assets/images/r1.jpg'),
                  _smallImage('assets/images/r2.jpg'),
                  _smallImage('assets/images/r3.jpg'),
                ],
              ),
            ),

            const SizedBox(height: 30),

            _largeCard(
              'assets/images/personal_trainer.jpg',
              'Find me a personal Trainer',
            ),
            const SizedBox(height: 18),
            _largeCard(
              'assets/images/group_class.jpg',
              'Find me group classes',
            ),
          ],
        ),
      ),
    );
  }

  Widget _smallImage(String path) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      width: 110,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(image: AssetImage(path), fit: BoxFit.cover),
      ),
    );
  }

  Widget _largeCard(String imagePath, String title) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(0.5), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(title, style: AppTextStyles.heading2),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Explore now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
