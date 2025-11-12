import 'package:flutter/material.dart';
import '../core/theme/colors.dart';
// import '../core/theme/text_styles.dart';
// import '../core/utils/app_sizes.dart';

class ExerciseCard extends StatelessWidget {
  final String imagePath;
  final VoidCallback onStart;

  const ExerciseCard({
    super.key,
    required this.imagePath,
    required this.onStart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.15), blurRadius: 6, offset: const Offset(0,4)),
        ],
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
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
            onPressed: onStart,
            child: const Text("Start", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
