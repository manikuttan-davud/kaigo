import 'package:intl/intl.dart';

class DataModel {
  final String date;
  final String text;
  final bool isIcon;
  final String penaltyPoints;


  DataModel({required this.date, required this.text, required this.isIcon, required this.penaltyPoints});

  factory DataModel.fromJson(Map<String, dynamic> data) {
    return DataModel(
      date:data['date'], 
      text:data['text'],
       isIcon: data['isIcon'],
        penaltyPoints:data['penaltyPoints'],

     
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'text': text,
      'isIcon': isIcon,
      'penaltyPoints':penaltyPoints
    };
  }
}
