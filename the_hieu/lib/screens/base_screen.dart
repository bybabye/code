import 'package:flutter/material.dart';
import 'package:the_hieu/screens/home_page.dart';
import 'package:the_hieu/screens/setting_page.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  navigateTopage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomePage(),
          SizedBox(
            child: Center(child: Text("page 1")),
          ),
          SizedBox(
            child: Center(child: Text("page 2")),
          ),
          SettingPage()
          
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70,
          color: Colors.lightBlueAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _bottomAppbarIcon(index: 0, icon: Icons.home_outlined),
              _bottomAppbarIcon(index: 1, icon: Icons.notification_add_outlined),
              _bottomAppbarIcon(index: 2, icon: Icons.verified_user),
              _bottomAppbarIcon(index: 3, icon: Icons.settings),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomAppbarIcon({required int index, required IconData icon}) {
    return IconButton(
      onPressed: () {
        navigateTopage(index);
      },
      icon: Icon(
        icon,
        color: _selectedIndex == index ? Colors.black : Colors.white,
      ),
      iconSize: 32,
    );
  }
}
