import 'package:flutter/material.dart';
import 'package:flutter_ui/Controller/MenuController.dart';
import 'package:flutter_ui/Screens/dashboard.dart';
import 'package:flutter_ui/component/widgets/side_menu.dart';
import 'package:flutter_ui/responsive/responsive.dart';
import 'package:flutter_ui/themes/app_color.dart';
import 'package:provider/provider.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      key: context.read<MenuController>().ScaffoldKey,
        backgroundColor: AppColor.bgColor,  
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(Responsive.isDesktop(context))
                const Expanded(
                    flex: 1,
                    child: SideMenu()),
              const Expanded(
                  flex: 5,
                  child: DashBoard(),)
            ],
          ),
        ));
  }
}


