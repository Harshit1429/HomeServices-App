import 'package:flutter/cupertino.dart';

class UserModel {
  UserModel({
    required this.images,
    required this.images1,
    required this.images2,
    required this.images3,
    required this.images4,
    required this.text,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  UserModel.fromJson(dynamic json) {
    images = json['images'];
    images1 = json['images1'];
    text = json['Text'];
    images2 = json['images2'];
    images3 = json['images3'];
    images4 = json['images4'];
    text1 = json['Text1'];
    text2 = json['Text2'];
    text3 = json['Text3'];
  }
  String images='';
  String images1='';
  String text='';
  String images2='';
  String images3='';
  String images4='';
  String text1='';
  String text2='';
  String text3='';

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['images'] = images;
    map['images1'] = images1;
    map['Text'] = text;
    map['images2'] = images2;
    map['images3'] = images3;
    map['images4'] = images4;
    map['Text1'] = text1;
    map['Text2'] = text2;
    map['Text3'] = text3;
    return map;
  }

}