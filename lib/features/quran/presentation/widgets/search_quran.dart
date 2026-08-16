import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_colors.dart';

class SearchQuran extends StatelessWidget {
  const SearchQuran({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.black.withOpacity(0.35),
        border: Border.all(color: AppColors.gold, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(Icons.menu_book_rounded, size: 20, color: AppColors.gold),
          const SizedBox(width: 14),
          const Text(
            "Sura Name",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
