import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kaigo_project/kaigo/utils/colors.dart';

import 'package:kaigo_project/kaigo/utils/text_style.dart';

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, top: 16.h),
      child: Container(
        width: 31.w,
        height: 31.w,
        decoration: BoxDecoration(
            color: colorEE5F40,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1.w, color: colorEE5F40)),
        child: Stack(
          children: [
            Center(child: SvgPicture.asset('assets/svg/Vector (5).svg')),
            Center(child: SvgPicture.asset('assets/svg/Vector (7).svg')),
            Center(child: SvgPicture.asset('assets/svg/Vector.svg')),
          ],
        ),
      ),
    );
  }
}

class LeadingIcon2 extends StatelessWidget {
  final String points;
  const LeadingIcon2({
    super.key,
    required this.points,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, top: 16.h),
      child: Stack(
        children: [
          Container(
            width: 31.w,
            height: 31.h,
            decoration: BoxDecoration(
                color: points.contains('+')
                    ? const Color.fromRGBO(18, 200, 113, 0.1)
                    : const Color.fromRGBO(238, 95, 64, 0.1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 1.w,
                    color: points.contains('+') ? color12C871 : colorEE5F40)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.w, top: 6.h),
            child: Text(
              '${points}p',
              style: points.contains('+') ? tsS12CgreenW500 : tsS12C0xW500,
            ),
          )
        ],
      ),
    );
  }
}
