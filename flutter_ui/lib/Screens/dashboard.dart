import 'package:flutter/material.dart';
import 'package:flutter_ui/component/header.dart';
import 'package:flutter_ui/component/widgets/info_card.dart';
import 'package:flutter_ui/component/widgets/my_files.dart';
import 'package:flutter_ui/component/widgets/recent_file.dart';
import 'package:flutter_ui/component/widgets/strange_details.dart';
import 'package:flutter_ui/models/myfiles.dart';
import 'package:flutter_ui/responsive/responsive.dart';
import 'package:flutter_ui/themes/app_color.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
          controller: ScrollController(),
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              const Header(),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          const MyFiles(),
                          const SizedBox(
                            height: defaultPadding,
                          ),
                          Responsive(
                              mobile: FileInfoCardGridView(
                                crossAxisCount: _size.width < 650 ? 2 : 4,
                                childAspectRatio: _size.width < 650 ? 1.3 : 1,
                              ),
                              tablet: FileInfoCardGridView(),
                              desktop: FileInfoCardGridView(
                                childAspectRatio:
                                    _size.width < 1400 ? 1.1 : 1.4,
                              )),
                          const SizedBox(
                            height: defaultPadding,
                          ),
                          const RecentFileA(),
                          if (Responsive.isMobile(context))
                            const SizedBox(
                              height: defaultPadding,
                            ),
                          if (Responsive.isMobile(context))
                            const StrageDetails(),
                        ],
                      )),
                  if (!Responsive.isMobile(context))
                    const SizedBox(
                      width: defaultPadding,
                    ),
                  if (!Responsive.isMobile(context))
                    const Expanded(flex: 2, child: StrageDetails()),
                ],
              )
            ],
          )),
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      
        shrinkWrap: true,
        itemCount: demoMyFiels.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: childAspectRatio,
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: defaultPadding,
            crossAxisSpacing: defaultPadding),
        itemBuilder: (context, index) => InfoCard(
              info: demoMyFiels[index],
            ));
  }
}
