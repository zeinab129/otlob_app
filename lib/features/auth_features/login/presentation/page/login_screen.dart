import 'package:ecommerce_app/config/routes/app_router.dart';
import 'package:ecommerce_app/core/enums/enums.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/auth_features/login/data/data_source/remote/login_remote_ds_impl.dart';
import 'package:ecommerce_app/features/auth_features/login/data/repository/login_repo_impl.dart';
import 'package:ecommerce_app/features/auth_features/login/domain/use_case/login_usecase.dart';
import 'package:ecommerce_app/features/auth_features/login/presentation/bloc/login_bloc.dart';
import 'package:ecommerce_app/features/auth_features/login/presentation/widget/login_text_field_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LoginBloc(LoginUseCase(LoginRepoImpl(LoginRemoteDsImpl()))),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state.status == RequestStatus.loading) {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                title: Center(child: CircularProgressIndicator()),
              ),
            );
          } else if (state.status == RequestStatus.success) {
            Navigator.pushNamedAndRemoveUntil(
                context, AppRoutesName.home, (route) => false);
          } else if (state.status == RequestStatus.failure) {
            Navigator.pop(context);
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Error"),
                content: Text(state.failures?.message ?? ""),
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.blueColor,
            body: Center(
              child: SingleChildScrollView(
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
                        "Welcome Back To Route",
                        style: Styles.welcomeLoginStyle,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "Please sign in with your mail",
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
                        height: 32.h,
                      ),
                      LoginTextFieldItem(
                        label: "Password",
                        hint: "enter your password",
                        type: TextInputType.visiblePassword,
                        isObs: true,
                        controller: passwordController,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, AppRoutesName.forget_pass);
                            },
                            child: Text(
                              "Forgot password",
                              style: Styles.authLabelStyle
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 56.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 64.h,
                        child: ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<LoginBloc>(context).add(
                                LoginButtonEvent(
                                    email: emailController.text,
                                    password: passwordController.text));
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.r))),
                          child: Text(
                            "Login",
                            style: Styles.authBtnStyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't Have an account?",
                            style:
                                Styles.authLabelStyle.copyWith(fontSize: 16.sp),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, AppRoutesName.signup);
                            },
                            child: Text(" Create Account",
                                style: Styles.authLabelStyle),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
