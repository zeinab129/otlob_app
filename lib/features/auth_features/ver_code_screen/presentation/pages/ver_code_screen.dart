import 'package:ecommerce_app/config/routes/app_router.dart';
import 'package:ecommerce_app/core/enums/enums.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/auth_features/login/presentation/widget/login_text_field_item.dart';
import 'package:ecommerce_app/features/auth_features/ver_code_screen/data/data_sources/ver_code_ds_impl.dart';
import 'package:ecommerce_app/features/auth_features/ver_code_screen/data/repositories/ver_code_repo_impl.dart';
import 'package:ecommerce_app/features/auth_features/ver_code_screen/domain/use_cases/ver_code_use_case.dart';
import 'package:ecommerce_app/features/auth_features/ver_code_screen/presentation/bloc/ver_code_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerCodeScreen extends StatefulWidget {
  String email;

  VerCodeScreen({super.key, required this.email});

  @override
  State<VerCodeScreen> createState() => _VerCodeScreenState();
}

class _VerCodeScreenState extends State<VerCodeScreen> {
  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          VerCodeBloc(VerCodeUseCase(VerCodeRepoImpl(VerCodeDSImpl()))),
      child: BlocConsumer<VerCodeBloc, VerCodeState>(
        listener: (context, state) {
          if (state.status == RequestStatus.success) {
            var snackBar = SnackBar(
              content: Text(state.verCodeModel?.status ??
                  'Verification completed successfully.'),
              backgroundColor: (Colors.black87),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            print(widget.email);
            Navigator.pushReplacementNamed(context, AppRoutesName.reset_pass,
                arguments: widget.email);
          } else if (state.status == RequestStatus.failure) {
            var snackBar = const SnackBar(
              content: Text('Failed to verify code!, try again.'),
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
                      "Verification Code",
                      style: Styles.welcomeLoginStyle,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "Enter verification code sent to your email..",
                      style: Styles.pleaseLoginStyle,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    LoginTextFieldItem(
                      label: "Verification code",
                      hint: "enter code",
                      type: TextInputType.text,
                      isObs: false,
                      controller: codeController,
                    ),
                    SizedBox(
                      height: 56.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 64.h,
                      child: ElevatedButton(
                        onPressed: state.status == RequestStatus.loading? null:() {
                          BlocProvider.of<VerCodeBloc>(context)
                              .add(VerCodeBtnEvent(
                            code: codeController.text,
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
                                "Verify",
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
