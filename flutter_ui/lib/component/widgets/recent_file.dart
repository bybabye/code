

import 'package:flutter/material.dart';
import 'package:flutter_ui/data/recentfile.dart';
import 'package:flutter_ui/themes/app_color.dart';

class RecentFileA extends StatelessWidget {
  const RecentFileA({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: AppColor.secondColor,
        borderRadius:
            BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              horizontalMargin: 0,
              columns: const [
              DataColumn(label: Text("Files Name")),
              DataColumn(label: Text("Day")),
              DataColumn(label: Text("Size")),
            ], rows: List.generate(demoRecentFile.length, (index) =>
              DataRow(cells: [
                DataCell(
                  Row(
                    crossAxisAlignment:
                        CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          color: demoRecentFile[index].color!.withOpacity(.1),
                        ),
                        child: Image.asset(
                          demoRecentFile[index].icon!,
                          height: 30,
                          width: 30,
                          color: demoRecentFile[index].color,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                            defaultPadding),
                        child: Text(
                            demoRecentFile[index].title!),
                      )
                    ],
                  ),
                ),
                DataCell(Text(demoRecentFile[index].date!)),
                DataCell(Text(demoRecentFile[index].size!)),
              ])
            ),
          )
        )],
      ),
    );
  }
}