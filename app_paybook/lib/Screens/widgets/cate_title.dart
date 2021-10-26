import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  final String title;
  const CategoryTitle(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      // height: size.height * 0.05,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
          const Text("See more",style: TextStyle(
            color: Colors.grey,
          ),)
        ],
      ),
    );
  }
}
