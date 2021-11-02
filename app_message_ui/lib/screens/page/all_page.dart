import 'package:app_message_ui/screens/page/list_view_mess.dart';
import 'package:app_message_ui/screens/page/list_view_online.dart';
import 'package:app_message_ui/screens/widgets/header.dart';
import 'package:app_message_ui/value/app_color.dart';
import 'package:flutter/material.dart';

class AllPage extends StatefulWidget {
  const AllPage({Key? key}) : super(key: key);

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBackgruond,
      body: Column(
        children: const [
          Header(),
          ListViewOnline(),
          ListViewMess(),
        ],
      ),
    );
  }
}
