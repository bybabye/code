import 'package:app_message_ui/screens/page/all_page.dart';
import 'package:app_message_ui/screens/page/page_list_chat.dart';
import 'package:app_message_ui/screens/page/page_list_online.dart';
import 'package:app_message_ui/screens/widgets/next_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'data/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyhomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  const MyhomePage({Key? key}) : super(key: key);

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  void initState() {
    super.initState();
    getHttp();
    getHttpChat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            NextPage(
                name: "All Widget !",
                funtion: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AllPage()))),
            NextPage(
                name: "messages oline !",
                funtion: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const PageListOnline()))),
            NextPage(
                name: "messages chat !",
                funtion: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const PageListChat()))),
          ],
        ),
      ),
    );
  }
}
