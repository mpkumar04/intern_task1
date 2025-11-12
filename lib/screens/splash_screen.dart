import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../core/theme/colors.dart';
import '../core/theme/text_styles.dart';
import '../core/utils/app_sizes.dart';
import '../widgets/primary_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/splash.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(color: Colors.black.withOpacity(0.4)),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.lg),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Join the Fitness\nClub',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      height: 1.1,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(height: AppSizes.md),
                  PrimaryButton(
                    text: 'Start Training',
                    onPressed: () => GoRouter.of(context).go('/dashboard'),
                    width: AppSizes.wPct(context, 0.65),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
