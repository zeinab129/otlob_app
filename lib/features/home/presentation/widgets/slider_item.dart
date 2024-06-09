import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderItem extends StatelessWidget {
  String path;
  int index;
  String discount;
  String title;

  SliderItem({super.key, required this.path, required this.index, required this.title, required this.discount});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: index%2 == 0? Alignment.centerLeft: Alignment.centerRight,
      children: [
        SizedBox(
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Image.asset(
              path,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "UP TO",
                style: Styles.sliderHeadlineStyle.copyWith(color: index%2 == 0? AppColors.blueColor: AppColors.whiteColor),
              ),
              RichText(
                text: TextSpan(
                    text: '$discount%',
                    style: Styles.sliderHeadlineStyle
                        .copyWith(fontSize: 30.sp, color: index%2 == 0? AppColors.blueColor: AppColors.whiteColor),
                    children: [
                      TextSpan(
                          text: "OFF",
                          style: Styles.authBtnStyle.copyWith(color: index%2 == 0? AppColors.blueColor: AppColors.whiteColor))
                    ]),
              ),
              SizedBox(
                  width: 140.w,
                  child: Text(
                    title,
                    style: Styles.sliderTitleStyle.copyWith(color: index%2 == 0? AppColors.blueColor: AppColors.whiteColor),
                  )),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(15)),
                  backgroundColor: index%2 == 0? AppColors.blueColor: AppColors.whiteColor,
                ),
                child: Text("Shop Now",
                    style: Styles.sliderTitleStyle.copyWith(color: index%2 == 0? AppColors.whiteColor: AppColors.blueColor)),
              )
            ],
          ),
        )
      ],
    );
  }
}
