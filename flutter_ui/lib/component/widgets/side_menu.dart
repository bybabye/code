

import 'package:flutter/material.dart';
import 'package:flutter_ui/Screens/widgets/list_title.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        
        child: Column(
          children: [
            DrawerHeader(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/vi/thumb/a/a1/Man_Utd_FC_.svg/1200px-Man_Utd_FC_.svg.png",
              ),
            ),
            DrawerListTile(
                title: "DashBoard",
                icon: Icons.dashboard,
                press: () {
                }),
            DrawerListTile(
                title: "Transaction",
                icon: Icons.assessment_rounded,
                press: () {}),
            DrawerListTile(
                title: "Task", icon: Icons.task, press: () {}),
            DrawerListTile(
                title: "Document",
                icon: Icons.document_scanner,
                press: () {}),
            DrawerListTile(
                title: "Store",
                icon: Icons.storefront_outlined,
                press: () {}),
            DrawerListTile(
                title: "Notifications",
                icon: Icons.notifications,
                press: () {}),
            DrawerListTile(
                title: "Profile",
                icon: Icons.person_pin,
                press: () {}),
            DrawerListTile(
                title: "Setting",
                icon: Icons.settings,
                press: () {}),
          ],
        ),
      ),
    );
  }
}