import 'package:flutter/material.dart';

class CardModel {
  String? descrition;
  Color? color;
  Icon? icon;
  int? value;

  CardModel({this.descrition, this.color, this.icon, this.value});

  CardModel.fromJson(Map<String, dynamic> json) {
    descrition = json['descrition'];
    color = json['color'];
    icon = json['icon'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['descrition'] = this.descrition;
    data['color'] = this.color;
    data['icon'] = this.icon;
    data['value'] = this.value;
    return data;
  }
}
