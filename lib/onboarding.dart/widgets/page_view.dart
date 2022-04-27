import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_onboarding/utils/app_size_boxes.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'steps_button_arrow.dart';
import 'package:hexcolor/hexcolor.dart';
import '../page_view_item.dart';

class PageViewComponent extends StatelessWidget {
  const PageViewComponent(
      {Key? key,
      required this.page,
      required this.index,
      required this.pages,
      required this.pageController})
      : super(key: key);
  final PageViewModel page;
  final int index;
  final List<PageViewModel> pages;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.zero,
            height: 308.h,
            width: 306.w,
            child: Lottie.asset(
              page.image,
            ),
          ),
        ),
        Expanded(
          child: Card(
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white, width: 1.r),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(100.r)),
            ),
            child: Column(
              children: [
                80.heightBox,
                Text(
                  page.title,
                  style: TextStyle(
                      fontSize: 20.0.sp,
                      fontFamily: 'Poppins-Medium',
                      color: HexColor('#000000'),
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                    child: Text(
                      page.body,
                      style: TextStyle(
                          fontSize: 16.0.sp,
                          height: 1.2.h,
                          fontFamily: 'Poppins-Regular',
                          color: HexColor('#000000'),
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                30.heightBox,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            //Navigate to login screen
                          },
                          child: Text(
                            'Skip',
                            style: TextStyle(
                                color: HexColor('#929292'),
                                fontFamily: 'Poppins-Regular',
                                fontSize: 18.sp),
                          )),
                      SmoothPageIndicator(
                        controller: pageController,
                        count: pages.length,
                        axisDirection: Axis.horizontal,
                        effect: ExpandingDotsEffect(
                            dotColor: HexColor('#929292'),
                            paintStyle: PaintingStyle.fill,
                            activeDotColor: HexColor('#66D26D')),
                      ),
                      StepsContainer(
                        page: index,
                        list: pages,
                        controller: pageController,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
