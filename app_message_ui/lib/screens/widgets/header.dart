import 'package:app_message_ui/value/app_color.dart';
import 'package:app_message_ui/value/app_text_style.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColor.kBackgruondItem,
      height: size.height / 5,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildIcon(Icons.arrow_back, () => Navigator.of(context).pop()),
              _buildIcon(Icons.add, () => Navigator.of(context).pop()),
            ],
          ),
          const Padding(
            padding:  EdgeInsets.all(10.0),
            child:  Text("Messages",style: AppTextStyle.h1,),
          )
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon, Function() funtion) {
    return IconButton(
        onPressed: funtion,
        icon: Icon(
          icon,
          color: AppColor.kIcon,
          size: 28,
        ));
  }
  
}
