import 'package:app_message_ui/screens/page/list_view_online.dart';
import 'package:flutter/material.dart';

class PageListOnline extends StatelessWidget {
  const PageListOnline({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mess online"),
      ),
      body: const ListViewOnline(),
    );
  }
}