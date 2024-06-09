import 'package:ecommerce_app/core/cache/shared_pereference.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/edit_profile_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTab extends StatefulWidget {
  ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  @override
  void initState() {
    nameController.text = CacheHelper.getString("user_name") ?? "";
    emailController.text = CacheHelper.getString("email") ?? "";
    passController.text = CacheHelper.getString("pass") ?? "";
    phoneController.text = CacheHelper.getString("phone") ?? "";
    addressController.text = CacheHelper.getString("address") ?? "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome, ${nameController.text}",
                  style: Styles.authTextStyle
                      .copyWith(color: AppColors.blueFontColor),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  emailController.text,
                  style: Styles.sliderTitleStyle.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.blueFontColor.withOpacity(0.6)),
                ),
                SizedBox(
                  height: 40.h,
                ),
                EditProfileField(
                    label: "Your full name",
                    hint: "hint",
                    type: TextInputType.name,
                    isObs: false,
                    controller: nameController),
                SizedBox(
                  height: 24.h,
                ),
                EditProfileField(
                    label: "Your E-mail",
                    hint: "hint",
                    type: TextInputType.emailAddress,
                    isObs: false,
                    controller: emailController),
                SizedBox(
                  height: 24.h,
                ),
                EditProfileField(
                    label: "Your password",
                    hint: "paasss",
                    type: TextInputType.visiblePassword,
                    isObs: true,
                    controller: passController),
                SizedBox(
                  height: 24.h,
                ),
                EditProfileField(
                    label: "Your mobile number",
                    hint: "hint",
                    type: TextInputType.phone,
                    isObs: false,
                    controller: phoneController),
                SizedBox(
                  height: 24.h,
                ),
                EditProfileField(
                    label: "Your Address",
                    hint: "hint",
                    type: TextInputType.text,
                    isObs: false,
                    controller: addressController),
                SizedBox(
                  height: 24.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 56.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blueColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r))),
                    child: Text(
                      "Update",
                      style: Styles.authBtnStyle.copyWith(color: AppColors.whiteColor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
