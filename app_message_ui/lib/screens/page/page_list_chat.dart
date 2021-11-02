
import 'package:app_message_ui/screens/page/list_view_mess.dart';
import 'package:flutter/material.dart';

class PageListChat extends StatelessWidget {
  const PageListChat({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mess online"),
      ),
      body: Column(
        children: const [
           ListViewMess(),
        ],
      ) 
    );
  }
}