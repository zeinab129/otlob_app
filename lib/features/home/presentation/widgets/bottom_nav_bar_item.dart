import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

BottomNavigationBarItem BottomNavBarItem(
    {required int index,
    required int currentIndex,
    required String imagePath}) {
  return BottomNavigationBarItem(
    icon: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentIndex == index
                ? AppColors.whiteColor
                : Colors.transparent),
        padding: const EdgeInsets.all(8),
        child: Image.asset(
          imagePath,
          color: currentIndex == index
              ? AppColors.blueColor
              : AppColors.whiteColor,
        )),
    label: "",
  );
}
