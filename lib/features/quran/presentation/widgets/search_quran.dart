import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_colors.dart';

class SearchQuran extends StatelessWidget {
  final void Function(String)? onChanged;
  const SearchQuran({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),

      cursorColor: AppColors.gold,

      decoration: InputDecoration(
        hintText: "Sura Name",
        hintStyle: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),

        prefixIcon: Icon(
          Icons.menu_book_rounded,
          size: 20,
          color: AppColors.gold,
        ),

        filled: true,
        fillColor: AppColors.black.withOpacity(0.35),

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 14,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.gold, width: 1),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.gold, width: 1.5),
        ),
      ),
    );
  }
}
