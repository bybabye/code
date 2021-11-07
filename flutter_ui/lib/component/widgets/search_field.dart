

import 'package:flutter/material.dart';
import 'package:flutter_ui/themes/app_color.dart';

class SreachField extends StatelessWidget {
  const SreachField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: AppColor.secondColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: const  EdgeInsets.all(defaultPadding * 0.75),
            margin:  const EdgeInsets.all(defaultPadding / 2),
            decoration:  BoxDecoration(
              color: AppColor.kPrimary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.search_sharp),
          ),
        )
      ),
      
    );
  }
}