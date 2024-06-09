import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileField extends StatefulWidget {
  String label;
  String hint;
  TextInputType type;
  bool isObs;
  TextEditingController controller;

  EditProfileField(
      {super.key,
      required this.label,
      required this.hint,
      required this.type,
      required this.isObs,
      required this.controller});

  @override
  State<EditProfileField> createState() => _EditProfileFieldState();
}

class _EditProfileFieldState extends State<EditProfileField> {
  bool hide = true;

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: Styles.authTextStyle.copyWith(color: AppColors.blueFontColor),
        ),
        SizedBox(
          height: 16.h,
        ),
        SizedBox(
          height: 54.h,
          child: Center(
            child: TextFormField(
              controller: widget.controller,
              keyboardType: widget.type,
              obscureText: widget.isObs ? hide : false,
              obscuringCharacter: '*',
              style: Styles.authTextStyle,
              maxLines: 1,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.whiteColor,
                  hintText: widget.hint,
                  hintStyle: Styles.authHintStyle,
                  suffixIcon: IconButton(
                          icon:Image.asset(AppImages.ic_edit),
                          onPressed: widget.isObs? () {
                            hide = !hide;
                            setState(() {});
                          }: null,
                        ),
                  //suffixIcon: Image.asset(AppImages.ic_edit),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: const BorderSide(
                          color: AppColors.blueColor, width: 1)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: BorderSide(
                          color: AppColors.blueColor.withOpacity(0.3),
                          width: 0)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 1)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 1))),
            ),
          ),
        ),
      ],
    );
  }
}
