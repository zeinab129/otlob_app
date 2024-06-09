import 'package:ecommerce_app/config/routes/app_router.dart';
import 'package:ecommerce_app/core/enums/enums.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/auth_features/signUp/data/data_sources/signup_ds_impl.dart';
import 'package:ecommerce_app/features/auth_features/signUp/data/models/signup_request_model.dart';
import 'package:ecommerce_app/features/auth_features/signUp/data/repositories/signup_repo_impl.dart';
import 'package:ecommerce_app/features/auth_features/signUp/domain/use_cases/signup_usecase.dart';
import 'package:ecommerce_app/features/auth_features/signUp/presentation/bloc/signup_bloc.dart';
import 'package:ecommerce_app/features/auth_features/signUp/presentation/widgets/signup_text_field_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SignupBloc(SignupUseCase(SignupRepoImpl(SignupDsImpl()))),
      child: BlocConsumer<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state.status == RequestStatus.loading) {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                title: Center(
                  child: CircularProgressIndicator(),
                ),
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
                    ));
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.blueColor,
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal:  16.w, vertical: 32.h),
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
                        height: 46.9.h,
                      ),
                      SignupTextFieldItem(
                        label: "Full Name",
                        hint: "enter your full name",
                        type: TextInputType.name,
                        isObs: false,
                        controller: nameController,
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      SignupTextFieldItem(
                        label: "Mobile Number",
                        hint: "enter your mobile no.",
                        type: TextInputType.phone,
                        isObs: false,
                        controller: phoneController,
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      SignupTextFieldItem(
                        label: "E-mail address",
                        hint: "enter your email address",
                        type: TextInputType.emailAddress,
                        isObs: false,
                        controller: emailController,
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      SignupTextFieldItem(
                        label: "Password",
                        hint: "enter your password",
                        type: TextInputType.visiblePassword,
                        isObs: true,
                        controller: passwordController,
                      ),

                      SizedBox(
                        height: 32.h,
                      ),
                      SignupTextFieldItem(
                        label: "Address",
                        hint: "enter your address",
                        type: TextInputType.text,
                        isObs: false,
                        controller: addressController,
                      ),
                      SizedBox(
                        height: 56.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 64.h,
                        child: ElevatedButton(
                          onPressed: () {
                            var model = SignupRequestModel(
                                name: nameController.text,
                                email: emailController.text,
                                password: passwordController.text,
                                rePassword: passwordController.text,
                                phone: phoneController.text);
                            BlocProvider.of<SignupBloc>(context)
                                .add(SignupBtnEvent(model, addressController.text));
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.r))),
                          child: Text(
                            "Sign up",
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
                            "Already Have an account?",
                            style:
                                Styles.authLabelStyle.copyWith(fontSize: 16.sp),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, AppRoutesName.login);
                            },
                            child: Text(" Login", style: Styles.authLabelStyle),
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
