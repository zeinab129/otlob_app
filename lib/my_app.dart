
import 'package:ecommerce_app/config/routes/app_router.dart';
import 'package:ecommerce_app/config/theming/app_theme.dart';
import 'package:ecommerce_app/core/cache/shared_pereference.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          initialRoute: CacheHelper.isLoginToken()? "home": "login",
          onGenerateRoute: (settings) => AppRouter.onGenerate(settings),
        );
      },
    );
  }
}