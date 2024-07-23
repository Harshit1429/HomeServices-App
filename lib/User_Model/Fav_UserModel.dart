class FavUserModel {
  FavUserModel({
    required this.images,
    required this.text,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });

  FavUserModel.fromJson(dynamic json) {
    images = json['images'];
    text1 = json['Text1'];
    text2 = json['Text2'];
    text3 = json['Text3'];
    text3 = json['Text4'];
  }
  String images='';
  String text1='';
  String text='';
  String text2='';
  String text3='';
  String text4='';

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['images'] = images;
    map['Text'] = text;
    map['Text1'] = text1;
    map['Text2'] = text2;
    map['Text3'] = text3;
    map['Text4'] = text4;
    return map;
  }

}