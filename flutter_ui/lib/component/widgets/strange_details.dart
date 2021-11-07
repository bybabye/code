import 'package:flutter/material.dart';
import 'package:flutter_ui/component/widgets/chart.dart';
import 'package:flutter_ui/component/widgets/strorage_info_card.dart';
import 'package:flutter_ui/themes/app_color.dart';

class StrageDetails extends StatelessWidget {
  const StrageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: AppColor.secondColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Storage Details",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Chair(),
          const StorageInfoCard(
              icon: Icons.file_copy,
              title: " Documents Files",
              amountOfFiles: "1329 Files",
              numberOffiles: "1.3GB",
              color: AppColor.kPrimary,
            ),
          const StorageInfoCard(
              icon: Icons.video_library,
              title: " Media Files",
              amountOfFiles: "1329 Files",
              numberOffiles: "15.3GB",
              color: AppColor.pieChartBlue,
              ),
          const StorageInfoCard(
              icon: Icons.folder,
              title: " Other Files",
              amountOfFiles: "1329 Files",
              numberOffiles: "15.3GB",
              color: AppColor.pieChartYellow,
            ),
          const StorageInfoCard(
              icon: Icons.battery_unknown,
              title: " Media Files",
              amountOfFiles: "140  Files",
              numberOffiles: "15.3GB",
              color: AppColor.pieChartRed,
              ),
        ],
      ),
    );
  }
}
