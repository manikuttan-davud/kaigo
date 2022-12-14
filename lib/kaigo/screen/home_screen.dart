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
  String penaltyPoints = '8p';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        shadowColor: color88A0BB,
        backgroundColor: colorFAFAFA,
        leading: const BackButton(),
        //TODO:ISSUE IN COLOR(SVG IMAGE)
        actions: const [Textbutton()],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 32.h, bottom: 26.h),
              child: const TotalPenaltyPointsWidget(
                penaltyPoints: '8',
              ),
            ),
            Column(
              children: List.generate(data.length, (index) {
                DataModel items = DataModel.fromJson(data[index]);
                var date = _formatDate(items: items, index: index);
                return Column(
                  children: [
                     Divider(thickness: 0.3.w,color: colorBABABA ,),
                    PenaltyItem(penaltyiItemDetail: items, date: date,
                    ),
                   
                  ],
                );
                
              }),
            ),
          ]),
        ),
      ),
    );
  }

  _formatDate({required items, required index}) {
    final DateTime newDate = DateTime.parse(items.date);
    final DateFormat formatter = DateFormat('yyyy / MM / dd');
    final String date = formatter.format(newDate);
    return date;
  }
}

class TotalPenaltyPointsWidget extends StatelessWidget {
  final String penaltyPoints;
  const TotalPenaltyPointsWidget({
    super.key,
    required this.penaltyPoints,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32.h, left: 25.w),
      child: Container(
        color: colorF7F7F7,
        width: 326.w,
        height: 77.h,
        child: Column(
          children: [
            Text(
              
              "$penaltyPoints\p",
              style: tsS26C0xW700,
              //textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              '????????????????????????????????????',
              style: tsS26C0xW400,
            )
          ],
        ),
      ),
    );
  }
}

class Textbutton extends StatelessWidget {
  const Textbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 23.h, right: 24.w),
      child: Text(
        '????????????????????????????????????',
        style: tsS14C0xW500,
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 8.w,
      height: 16.h,
      child: const Icon(Icons.arrow_back_ios,
      color: color70303030 ,
      ),
    );
  }
}

class PenaltyItem extends StatelessWidget {
  const PenaltyItem({
    super.key,
    required this.penaltyiItemDetail,
    required this.date,
  });

  final DataModel penaltyiItemDetail;
  final String date;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      // horizontalTitleGap: 5.w,
      leading: Padding(
        padding: EdgeInsets.only(left: 24.w),
        child: penaltyiItemDetail.isIcon == true
            ? const LeadingIcon()
            : LeadingIcon2(points: penaltyiItemDetail.penaltyPoints),
      ),
      title: Padding(
        padding: EdgeInsets.only(top: 13.h, left: 10.w),
        child: Text(
          date,
          style: tsS12C0xW400,
        ),
      ),

      subtitle: Padding(
        padding: EdgeInsets.only(top: 5.h, left: 11.w),
        child: Text(
          penaltyiItemDetail.text,
          style: tsS14C0xW400,
        ),
      ),
    );
  }
}
