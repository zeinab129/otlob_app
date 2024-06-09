import 'package:ecommerce_app/config/routes/app_router.dart';
import 'package:ecommerce_app/core/enums/enums.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/auth_features/login/presentation/widget/login_text_field_item.dart';
import 'package:ecommerce_app/features/auth_features/reset_password/data/data_sources/reset_password_ds_impl.dart';
import 'package:ecommerce_app/features/auth_features/reset_password/data/repositories/reset_password_repo_impl.dart';
import 'package:ecommerce_app/features/auth_features/reset_password/domain/repositories/reset_password_repo.dart';
import 'package:ecommerce_app/features/auth_features/reset_password/domain/use_cases/reset_password_use_case.dart';
import 'package:ecommerce_app/features/auth_features/reset_password/presentation/bloc/reset_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPassScreen extends StatefulWidget {
  String email;
  ResetPassScreen({super.key, required this.email});

  @override
  State<ResetPassScreen> createState() => _ResetPassScreenState();
}

class _ResetPassScreenState extends State<ResetPassScreen> {
  TextEditingController newPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResetPasswordBloc(
          resetPasswordUseCase: ResetPasswordUseCase(
              ResetPasswordRepoImpl(ResetPasswordDSImpl()))),
      child: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
        listener: (context, state) {
          if (state.status == RequestStatus.success) {
            var snackBar = const SnackBar(
              content: Text('Password rested successfully.'),
              backgroundColor: (Colors.black87),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            Navigator.pushReplacementNamed(context, AppRoutesName.login);
          }

          if (state.status == RequestStatus.failure) {
            var snackBar = SnackBar(
              content: Text(state.failure?.message ??
                  'Failed to reset Password!, try again.'),
              backgroundColor: (Colors.black87),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            backgroundColor: AppColors.blueColor,
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Image.asset(
                          AppImages.logo,
                          width: 237.w,
                          height: 71.1.h,
                        )),
                    SizedBox(
                      height: 86.9.h,
                    ),
                    Text(
                      "Reset Password",
                      style: Styles.welcomeLoginStyle,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "Enter your new password..",
                      style: Styles.pleaseLoginStyle,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    LoginTextFieldItem(
                      label: "New Password",
                      hint: "enter new password",
                      type: TextInputType.visiblePassword,
                      isObs: false,
                      controller: newPassController,
                    ),
                    SizedBox(
                      height: 56.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 64.h,
                      child: ElevatedButton(
                        onPressed: state.status == RequestStatus.loading? null:() {
                          BlocProvider.of<ResetPasswordBloc>(context).add(
                              ResetPassBtnEvent(
                                  email: widget.email?? "",
                                  newPass: newPassController.text));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r))),
                        child: state.status == RequestStatus.loading? const Center(child: CircularProgressIndicator(),):Text(
                          "Reset",
                          style: Styles.authBtnStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
