
import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key, required this.title, required this.icon, required this.press})
      : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Icon(
        icon,
        size: 16,
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
