import 'dart:ui';

import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static var welcomeLoginStyle = GoogleFonts.poppins(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.whiteColor);
  static var appBarTitleStyle = GoogleFonts.poppins(
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.blueFontColor);

  static var sliderHeadlineStyle = GoogleFonts.poppins(
      fontSize: 22.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.blueColor);

  static var sliderTitleStyle = GoogleFonts.poppins(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.blueColor);

  static var pleaseLoginStyle = GoogleFonts.poppins(
      fontSize: 16.sp,
      fontWeight: FontWeight.w300,
      color: AppColors.whiteColor);

  static var authLabelStyle = GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.whiteColor);

  static var authHintStyle = GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.w300,
      color: AppColors.blackColor.withOpacity(0.7));

  static var authTextStyle = GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.blackColor);

  static var authBtnStyle = GoogleFonts.poppins(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.blueColor);

  static var searchBarHintStyle = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.blueFontColor.withOpacity(0.6)
  );

  static var searchBarTexStyle = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.blueFontColor
  );
}
