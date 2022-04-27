import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../styles/colors.dart';
import '../utils/size_config.dart';
import 'page_view_item.dart';
import 'widgets/page_view.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<PageViewModel> onBoardingPages = [
    PageViewModel('assets/images/Chef-bro.json', 'Find Your Best Restaurant',
        'You can find many restaurants her at affordable prices and many discounts'),
    PageViewModel('assets/images/Take Away-cuate.json', 'Best Delivery',
        'We provide freight forwarding services that deliver your ordered items with fast service'),
    PageViewModel('assets/images/Peach-pana.json', 'Fresh Drinks, Stay Fresh',
        'Not only food, we provide clear healthy drink options for you, fresh taste always accompanies for you.')
  ];

  PageController pageController = PageController();
  bool isLast = false;
  int page = 0;

  @override
  Widget build(BuildContext context) {
    pageController.addListener(() {
      setState(() {
        page = pageController.page!.round();
      });
    });

    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: defaultColor,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: defaultColor,
              statusBarIconBrightness: Brightness.dark),
          backgroundColor: defaultColor,
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                onPageChanged: (index) {
                  if (index == onBoardingPages.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                controller: pageController,
                itemBuilder: (context, index) => PageViewComponent(
                  page: onBoardingPages[index],
                  pageController: pageController,
                  pages: onBoardingPages,
                  index: index,
                ),
                itemCount: onBoardingPages.length,
              ),
            ),
          ],
        ));
  }
}
