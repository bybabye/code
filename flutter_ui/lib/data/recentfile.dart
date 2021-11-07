import 'package:flutter/material.dart';
import 'package:flutter_ui/themes/app_color.dart';

class RecentFile {
  final String? icon, title, date, size;
  final Color? color;

  RecentFile({this.icon, this.title, this.date, this.size,this.color});
}

List<RecentFile> demoRecentFile = [
  RecentFile(
    icon: "assets/images/xd.png",
    title: "XD File",
    date: "01-03-2021",
    size: "3,5mb",
    color: Colors.pinkAccent,
  ),
  RecentFile(
    icon: "assets/images/figma.png",
    title: "Figma File",
    date: "27-02-2021",
    size: "19.0mb",
    color: Colors.pink,
  ),
  RecentFile(
    icon: "assets/images/document.png",
    title: "Document",
    date: "23-02-2021",
    size: "32.5mb",
    color: Colors.red,
  ),
  RecentFile(
    icon: "assets/images/sound.png",
    title: "Sound File",
    date: "21-02-2021",
    size: "3.5mb",
    color: Colors.green,
  ),
  RecentFile(
    icon: "assets/images/media.png",
    title: "Media File",
    date: "23-02-2021",
    size: "2.5gb",
    color: Colors.yellow,
  ),
  RecentFile(
    icon: "assets/images/sols.png",
    title: "Sales PDF",
    date: "25-02-2021",
    size: "3.5mb",
    color: Colors.green,
  ),
  RecentFile(
    icon: "assets/images/excel.png",
    title: "Excel File",
    date: "25-02-2021",
    size: "34.5mb",
    color: AppColor.kPrimary,
  ),
];
