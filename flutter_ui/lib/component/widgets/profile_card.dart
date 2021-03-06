

import 'package:flutter/material.dart';
import 'package:flutter_ui/themes/app_color.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding/2,
      ),
      decoration: BoxDecoration(
        color: AppColor.secondColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset("assets/images/user.png",height: 38,color: Colors.white,),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: defaultPadding/2),
            child:  Text("User"),),
          const Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}
