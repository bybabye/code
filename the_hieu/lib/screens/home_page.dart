
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.blueAccent,
      child: Stack(
        children: [
          Positioned(
            top: size.height * 0.1,
            left: size.width * 0.37,
            child: const Text("Nofications",style: TextStyle(
                fontSize: 20,
                color: Colors.black,
            ),),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: size.height * 0.75,
              width: size.width,
              decoration: const BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                )
              ),
              child: Column(
                children: [
                  const Expanded(child: SizedBox()),
                  Image.network("https://i.pinimg.com/originals/49/e5/8d/49e58d5922019b8ec4642a2e2b9291c2.png",width: 200,height: 200,),
                  const Text("Sorry,No data Availible"),
                  const Expanded(child: SizedBox()),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}