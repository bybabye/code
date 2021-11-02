import 'package:app_message_ui/value/app_color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Avatar extends StatelessWidget {
  Avatar({Key? key, this.url,this.check,this.number}) : super(key: key);
  String? url;
  String? check;
  int? number;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 36,
          backgroundImage: NetworkImage(url!),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: _buildActives(check!,number!),
        )
      ],
    );
  }

  Widget _buildActives(String check, int number) {
    if (check == "online") {
      return Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.kActives,
          border: Border.all(
            width: 2,
            color: Colors.white,
          ),
        ),
      );
    }
    if (number != 0) {
      return Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.kMess,
          border: Border.all(
            width: 2,
            color: Colors.white,
          ),
        ),
        child: Center(child: Text(number.toString(),style: const TextStyle(color: Colors.white),)),
      );
    }
    return Container();
  }
}
