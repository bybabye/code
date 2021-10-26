import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: size.height * 0.1,
      child: Row(
        children: [
          Expanded(child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.black38,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
              prefixIcon: const Icon(
                Icons.search_outlined,
                color: Colors.white,
                size: 30,
              ),
              hintText: "Sreach book here",
              hintStyle: TextStyle(
                color: Colors.grey[600]
              )
            ),
          )),
          IconButton(onPressed: () {}, icon: const Icon(Icons.light_mode_outlined,color: Colors.white,))
        ],
      ),
    );
  }
}
