import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'onboarding.dart/onboarding_screen.dart';
import 'styles/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 730),
      builder: (BuildContext context) => MaterialApp(
          title: 'onBoarding demo',
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          home: const OnBoardingScreen()),
    );
  }
}
