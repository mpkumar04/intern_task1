import 'package:flutter/material.dart';
import '../core/theme/colors.dart';
import '../core/theme/text_styles.dart';
import '../core/utils/app_sizes.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.red600,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r12),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      ),
      child: Text(text, style: AppTextStyles.button),
    );
  }
}
