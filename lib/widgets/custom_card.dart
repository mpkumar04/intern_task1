import 'package:flutter/material.dart';
import '../core/theme/colors.dart';
import '../core/utils/app_sizes.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String description;
  final Widget? trailing;

  const CustomCard({
    super.key,
    required this.title,
    required this.description,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppSizes.r8),
      padding: const EdgeInsets.all(AppSizes.r8),
      decoration: BoxDecoration(
        color: AppColors.red900,
        borderRadius: BorderRadius.circular(AppSizes.r20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text(description,
                    style: const TextStyle(color: Colors.white70)),
              ],
            ),
          ),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}
