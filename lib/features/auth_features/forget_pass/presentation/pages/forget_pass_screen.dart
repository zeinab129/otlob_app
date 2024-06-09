import 'package:ecommerce_app/config/routes/app_router.dart';
import 'package:ecommerce_app/core/enums/enums.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/auth_features/forget_pass/data/data_sources/forget_pass_ds_impl.dart';
import 'package:ecommerce_app/features/auth_features/forget_pass/data/repositories/forget_pass_repo_impl.dart';
import 'package:ecommerce_app/features/auth_features/forget_pass/domain/use_cases/forget_pass_use_case.dart';
import 'package:ecommerce_app/features/auth_features/forget_pass/presentation/bloc/forget_pass_bloc.dart';
import 'package:ecommerce_app/features/auth_features/login/presentation/widget/login_text_field_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassScreen extends StatefulWidget {
  ForgetPassScreen({super.key});

  @override
  State<ForgetPassScreen> createState() => _ForgetPassScreenState();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetPassBloc(
          ForgetPassUseCase(ForgetPassRepoImpl(ForgetPassDSImpl()))),
      child: BlocConsumer<ForgetPassBloc, ForgetPassState>(
        listener: (context, state) {
          if (state.status == RequestStatus.failure) {
            const snackBar = SnackBar(
              content: Text('Failed to send code!, try again.'),
              backgroundColor: (Colors.black87),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
          if (state.status == RequestStatus.success) {
            if (state.forgetPassModel?.statusMsg == "success") {
              var snackBar = SnackBar(
                content: Text(state.forgetPassModel?.message ??
                    'Verification Code sent to your email.'),
                backgroundColor: (Colors.black87),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              Navigator.pushReplacementNamed(context, AppRoutesName.ver_code,
                  arguments: emailController.text);
            } else {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Center(
                      child:
                          Text(state.forgetPassModel?.statusMsg ?? "Error!")),
                  content: Text(state.forgetPassModel?.message ??
                      "Something wrong happened!"),
                ),
              );
            }
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
                      "Forgot password!",
                      style: Styles.welcomeLoginStyle,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "Enter email to send verification code..",
                      style: Styles.pleaseLoginStyle,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    LoginTextFieldItem(
                      label: "E-mail",
                      hint: "enter your e-mail",
                      type: TextInputType.name,
                      isObs: false,
                      controller: emailController,
                    ),
                    SizedBox(
                      height: 56.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 64.h,
                      child: ElevatedButton(
                        onPressed: state.status == RequestStatus.loading
                            ? null
                            : () {
                                BlocProvider.of<ForgetPassBloc>(context)
                                    .add(ForgetPassBtnEvent(
                                  email: emailController.text,
                                ));
                              },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r))),
                        child: state.status == RequestStatus.loading
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : Text(
                                "Send Verification Code",
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
