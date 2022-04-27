import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../styles/colors.dart';
import '../../utils/size_config.dart';
import '../page_view_item.dart';

class StepsContainer extends StatelessWidget {
  StepsContainer({
    Key? key,
    required this.page,
    required List<PageViewModel> list,
    required PageController controller,
  })  : _list = list,
        _controller = controller,
        super(key: key);

  late int page;
  final List<PageViewModel> _list;
  final PageController _controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize * 4.5,
      height: SizeConfig.defaultSize * 4.5,
      child: Stack(
        children: [
          SizedBox(
            width: SizeConfig.defaultSize * 4.5,
            height: SizeConfig.defaultSize * 4.5,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(HexColor('#929292')),
              value: (page + 1) / (_list.length),
            ),
          ),
          Center(
            child: Ink(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3.7.r),
                  shape: BoxShape.circle),
              child: Container(
                width: SizeConfig.defaultSize * 6,
                height: SizeConfig.defaultSize * 6,
                decoration: BoxDecoration(
                  color: HexColor('#DEAA60'),
                  borderRadius: const BorderRadius.all(Radius.circular(110.0)),
                ),
                child: FloatingActionButton(
                  onPressed: () {
                    if (page < _list.length && page != _list.length - 1) {
                      _controller.animateToPage(page + 1,
                          duration: const Duration(microseconds: 500),
                          curve: Curves.easeInCirc);
                    } else {
                      // Navigate to Login Screen
                    }
                  },
                  backgroundColor: defaultColor,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 35.0.sp,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
