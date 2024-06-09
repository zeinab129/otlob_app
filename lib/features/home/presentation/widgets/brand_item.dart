import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/features/home/data/models/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandItem extends StatelessWidget {
  Data brandModel;
  BrandItem({super.key, required this.brandModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      margin: EdgeInsets.only(bottom: 4.h),
      width: 160.w,
      height: 160.h,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: NetworkImage(brandModel.image ?? ""),
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        shadows: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1.0,
            spreadRadius: 1.0,
            offset: Offset(2.0, 2.0),
            // shadow direction: bottom right
          )
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(top: 8.h, right: 8.h),
        width: 24.w,
        height: 24.h,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.whiteColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 1.0,
                spreadRadius: 1.0,
                offset: Offset(2.0, 2.0),
                // shadow direction: bottom right
              )
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(1.5),
          child: Image.asset(AppImages.ic_favorites, color: AppColors.blueColor, width: 14.w, height: 14.h,),
        ),
      ),
    );
  }
}
