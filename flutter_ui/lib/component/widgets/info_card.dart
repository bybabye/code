
import 'package:flutter/material.dart';
import 'package:flutter_ui/Screens/widgets/progess_line.dart';
import 'package:flutter_ui/models/myfiles.dart';
import 'package:flutter_ui/themes/app_color.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);
  final CloundStorageInfo info;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: AppColor.secondColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: info.color!.withOpacity(.1),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Icon(
                  info.icon,
                  color: info.color,
                ),
              ),
              const Icon(
                Icons.more_vert,
                color: Colors.white54,
              )
            ],
          ),
          Text(
            info.title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          ProgessLine(color: info.color,percentage: info.percentage,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${info.numOfFiels} Files",
                style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.white70),
              ),
              Text(
                info.totalStorage!,
                style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}