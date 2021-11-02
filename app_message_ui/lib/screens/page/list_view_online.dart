import 'package:app_message_ui/data/data.dart';
import 'package:app_message_ui/screens/widgets/avatar.dart';
import 'package:app_message_ui/value/app_color.dart';
import 'package:app_message_ui/value/app_text_style.dart';
import 'package:flutter/material.dart';

class ListViewOnline extends StatefulWidget {
  const ListViewOnline({Key? key}) : super(key: key);

  @override
  State<ListViewOnline> createState() => _ListViewOnlineState();
}

class _ListViewOnlineState extends State<ListViewOnline> {
  @override
  void initState() {
    super.initState();
    getHttp();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        color: AppColor.kBackgruondItem,
        height: size.height / 6,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: info.length,
          itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20,right: 10,top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [
                Avatar(url: info[index].picture!.large,number: 0,check: info[index].status,),
                Text(info[index].name!,style: AppTextStyle.h2,),
              ],
              
            ),
          );
        }));
  }
}
