import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_onboarding/styles/colors.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightTheme = ThemeData(
    primaryColor: HexColor('#66D26D'),
    scaffoldBackgroundColor: HexColor('#FFFFFF'),
    appBarTheme: AppBarTheme(
      color: HexColor('#66D26D'),
      centerTitle: true,
      elevation: 5.0,
      actionsIconTheme: IconThemeData(color: Colors.white, size: 24.sp),
      titleTextStyle: TextStyle(
          color: HexColor('#FFFFFF'),
          fontSize: 15.0.sp,
          fontFamily: 'Poppins-Regular'),
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: defaultColor,
          statusBarIconBrightness: Brightness.light),
    ),
    iconTheme: IconThemeData(color: Colors.black, size: 24.sp),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: defaultColor,
      elevation: 20.0,
      backgroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontSize: 14.0.sp,
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
      bodyText2: TextStyle(
        fontSize: 20.0.sp,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
    ));
