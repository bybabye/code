import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

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
            child: const Text(
              "Settings",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
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
                  )),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  _buildInput(size, Icons.password,"change password"),
                  _buildInput(size, Icons.language,"Languge")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInput(Size size,IconData icon , String text ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: size.height * 0.1,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 0),
          prefixIcon: Icon(
            icon,
            color: Colors.black,
            size: 30,
          ),
          hintText: text,
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
