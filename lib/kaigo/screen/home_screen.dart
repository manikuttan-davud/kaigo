import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:kaigo_project/kaigo/model/data_model.dart';
import 'package:kaigo_project/kaigo/utils/colors.dart';
import 'package:kaigo_project/kaigo/utils/data.dart';
import 'package:kaigo_project/kaigo/utils/text_style.dart';
import 'package:kaigo_project/kaigo/widgets/leading_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorFAFAFA,
        leading: SvgPicture.asset('assets/svg/second.svg',
        width: 8.w,
        height: 16.h,
        fit: BoxFit.scaleDown,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 23.h, right: 24.w),
            child: Text(
              'キャンセルポリシーを確認',
              style: tsS14C0xW500,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children:[ Padding(
            padding: EdgeInsets.only(top: 32.h, left: 25.w),
            child: Container(
              color: colorF7F7F7,
              width: 326.w,
              height: 77.h,
              child: Column(
                children: [
                  Text(
                    '8p',
                    style: tsS26C0xW700,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    '合計ペナルティポイント数',
                    style: tsS26C0xW400,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(itemBuilder: ((context, index) {
             DataModel items =
   DataModel.fromJson(data[index]);
   final DateTime newDate = DateTime.parse(items.date);
  final DateFormat formatter = DateFormat('yyyy/MM/dd');
  final String formatted = formatter.format(newDate);
              return ListTile(
                leading:
                 items.isIcon==true?const LeadingIcon():  LeadingIcon2(points: items.penaltyPoints),
                title: Padding(
                  padding:  EdgeInsets.only(top: 13.h,right: 236.w),
                  
                 child: Text(formatted
                  ,
                  style: tsS12C0xW400,),
                ),
                subtitle: Text(items.text,
                style:tsS14C0xW400 ,),
              );
            })
            , separatorBuilder: ((context, index) {
              return const Divider(
                color: colorBABABA,
              );
            }),
             itemCount: data.length),
          )
          ]
        ),
      ),
    );
  }
}
