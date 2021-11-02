import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NextPage extends StatelessWidget {
  NextPage({Key? key,this.funtion,this.name}) : super(key: key);
  Function()? funtion;
  String? name;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.blue,
      onPressed: funtion,
      child: Text(name!),
    );
  }
}
