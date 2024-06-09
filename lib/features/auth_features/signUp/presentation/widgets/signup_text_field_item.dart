import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupTextFieldItem extends StatefulWidget {
  String label;
  String hint;
  TextInputType type;
  bool isObs;
  TextEditingController controller;

  SignupTextFieldItem(
      {super.key,
      required this.label,
      required this.hint,
      required this.type,
      required this.isObs,
      required this.controller});

  @override
  State<SignupTextFieldItem> createState() => _SignupTextFieldItemState();
}

class _SignupTextFieldItemState extends State<SignupTextFieldItem> {
  bool hide = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: Styles.authLabelStyle,
        ),
        SizedBox(
          height: 24.h,
        ),
        SizedBox(
          height: 64.h,
          child: TextFormField(
            controller: widget.controller,
            keyboardType: widget.type,
            obscureText: widget.isObs? hide: false,
            style: Styles.authTextStyle,
            maxLines: 1,
            decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.whiteColor,
                hintText: widget.hint,
                hintStyle: Styles.authHintStyle,
                suffixIcon: widget.isObs
                    ? InkWell(
                        child: hide
                            ? const Icon(
                                Icons.visibility,
                                color: AppColors.greyColor,
                              )
                            : const Icon(
                                Icons.visibility_off,
                                color: AppColors.greyColor,
                              ),
                        onTap: () {
                          hide = !hide;
                          setState(() {});
                        },
                      )
                    : null,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: const BorderSide(
                        color: AppColors.blackColor, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide:
                        const BorderSide(color: Colors.transparent, width: 0)),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: const BorderSide(color: Colors.red, width: 1)),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: const BorderSide(color: Colors.red, width: 1))),
          ),
        ),
      ],
    );
  }
}
