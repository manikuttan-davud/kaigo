import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kaigo_project/kaigo/utils/colors.dart';

import 'package:kaigo_project/kaigo/utils/text_style.dart';

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width:31.w ,
          height: 31.h,
          decoration: BoxDecoration(
            color: colorEE5F40,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1.w,color:colorEE5F40 )
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 7.w,right: 7.32.w,bottom: 8.99.h,top: 5.w),
          child: SvgPicture.asset('assets/svg/Vector (5).svg'),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 14.w,top: 12.h),
          child: SvgPicture.asset('assets/svg/Vector (7).svg'),
        ),
        Padding(
          padding:  EdgeInsets.only(top:18.68.h,left: 14.w,bottom: 12.32.h ),
          child: SvgPicture.asset('assets/svg/Vector.svg'),
        )
      ],
    );
  }
}

class LeadingIcon2 extends StatelessWidget {
  final String points;
  const LeadingIcon2({super.key, required this.points,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width:31.w ,
          height: 31.h,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(238, 95, 64, 0.1),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1.w,color:colorEE5F40 )
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 3.w,top: 6.h),
          child: Text('${points}p',style:tsS12C0xW500 ,),
        )
      ],
    );
  }
}

class LeadingIcon3 extends StatelessWidget {
  final String points;
  const LeadingIcon3({super.key, required this.points,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width:31.w ,
          height: 31.h,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(18, 200, 113, 0.1),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1.w,color:color12C871 )
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 3.w,top: 6.h),
          child: Text('${points}p',style:tsS12C0xW500 ,),
        )
      ],
    );
  }
}