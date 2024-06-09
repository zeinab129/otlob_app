import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/home/data/models/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  var catModel;

  CategoryItem({super.key, required this.catModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(catModel.image ?? ""),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          catModel.name ?? "",
          style:
              Styles.sliderTitleStyle.copyWith(fontWeight: FontWeight.w500, color: AppColors.blueFontColor),
        ),
      ],
    );
  }
}
