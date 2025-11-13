import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../core/theme/colors.dart';

class DailyWorkoutScreen extends StatelessWidget {
  const DailyWorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ✅ Top image header + back
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: Image.asset(
                    'assets/images/workout.jpg',
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  child: GestureDetector(
                    onTap: () =>
                        GoRouter.of(context).pop(), // goes back to dashboards
                    child: CircleAvatar(
                      backgroundColor: Colors.black.withOpacity(0.4),
                      child: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    'Full Body Workout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // ✅ Horizontal categories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildCategoryChip("Cardio"),
                    _buildCategoryChip("Boxing"),
                    _buildCategoryChip("Zumba"),
                    _buildCategoryChip("Hiking"),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ✅ Start Training Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  GestureDetector(
                    onTap: () async {
                      // Preload the images used in DailyProgressScreen
                      await precacheImage(
                        const AssetImage('assets/images/model.png'),
                        context,
                      );

                      // Navigate instantly after caching
                      GoRouter.of(context).go('/daily-progress');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 250,
                          height: 45,
                          decoration: BoxDecoration(
                            color: AppColors.red700,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Start Training',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 5,
                          color: AppColors.red700,
                        ),
                        Container(
                          padding: const EdgeInsets.all(11),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: AppColors.red700,
                          ),
                          child: const Icon(
                            Icons.play_circle_fill_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            _buildRoundCard(),
            _buildRoundCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String label) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.red700,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildRoundCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Round 01',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 10),
              _buildWorkoutItem(
                'Side Stretch Left',
                'assets/images/stretch.jpg',
              ),
              _buildWorkoutItem(
                'Side Stretch Right',
                'assets/images/stretch.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWorkoutItem(String title, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                const Text('3x', style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
          const Icon(Icons.play_circle_fill, color: AppColors.red700, size: 36),
        ],
      ),
    );
  }
}
