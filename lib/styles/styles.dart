import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

TextStyle daysLabelTextStyle = TextStyle(
    color: textColor,
    fontFamily: 'Poppins-Medium',
    fontSize: 14.sp,
    fontWeight: FontWeight.w100);

TextStyle extraNameStyle = TextStyle(
    color: textColor,
    fontSize: 14.sp,
    fontFamily: 'Poppins-Medium',
    fontWeight: FontWeight.w500);
TextStyle extraAdsStyle = TextStyle(
    color: textColor.withOpacity(.7),
    fontSize: 14.sp,
    fontFamily: 'Poppins-Regular',
    fontWeight: FontWeight.w500,
    textBaseline: TextBaseline.alphabetic);
TextStyle extraPriceStyle = TextStyle(
    color: textColor,
    fontSize: 12.sp,
    fontFamily: 'Poppins-Regular',
    fontWeight: FontWeight.w500,
    textBaseline: TextBaseline.alphabetic);
