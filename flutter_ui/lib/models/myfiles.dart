import 'package:flutter/material.dart';
import 'package:flutter_ui/themes/app_color.dart';

class CloundStorageInfo {
  final IconData? icon;
  final String? title;
  final String? totalStorage;
  final int? numOfFiels, percentage;
  final Color? color;

  CloundStorageInfo({
    this.icon,
    this.title,
    this.totalStorage,
    this.numOfFiels,
    this.percentage,
    this.color,
  });
}

List<CloundStorageInfo> demoMyFiels = [
  CloundStorageInfo(
    title: "Documents",
    numOfFiels: 1328,
    icon: Icons.file_copy_rounded,
    totalStorage: "1.9GB",
    color: AppColor.kPrimary,
    percentage: 35,
  ),
  CloundStorageInfo(
    title: "Google Drive",
    numOfFiels: 1328,
    icon: Icons.add_to_drive_rounded,
    totalStorage: "2.9GB",
    color: AppColor.pieChartYellow,
    percentage: 35,
  ),
  CloundStorageInfo(
    title: "One Driver",
    numOfFiels: 1328,
    icon: Icons.cloud_queue_outlined,
    totalStorage: "1GB",
    color: AppColor.pieChartBlue,
    percentage: 10,
  ),
  CloundStorageInfo(
    title: "Documents",
    numOfFiels: 5328,
    icon: Icons.card_giftcard_sharp,
    totalStorage: "17.3GB",
    color: AppColor.kPrimary,
    percentage: 80,
  ),
];
