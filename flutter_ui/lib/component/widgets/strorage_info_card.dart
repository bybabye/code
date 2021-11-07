import 'package:flutter/material.dart';
import 'package:flutter_ui/themes/app_color.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key? key,
    this.icon,
    this.title,
    this.amountOfFiles,
    this.numberOffiles, this.color,
  }) : super(key: key);
  final IconData? icon;
  final String? title;
  final String? amountOfFiles;
  final String? numberOffiles;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: AppColor.kPrimary.withOpacity(.15),
          ),
          borderRadius:
              const BorderRadius.all(Radius.circular(defaultPadding))),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: Icon(
              icon,
              color: color,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  amountOfFiles!,
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: Colors.white70,
                        overflow: TextOverflow.ellipsis
                      ),
                )
              ],
            ),
          )),
          Text(numberOffiles!)
        ],
      ),
    );
  }
}
