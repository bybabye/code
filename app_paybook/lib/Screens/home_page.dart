import 'package:app_paybook/Screens/widgets/coming_book.dart';
import 'package:app_paybook/Screens/widgets/custom_app_bar.dart';
import 'package:app_paybook/Screens/widgets/recommended.dart';
import 'package:app_paybook/Screens/widgets/trending_book.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView(
        children: [
          const CustomAppBar(),
          ComingBook(),
          Recommemded(),
          TrendingBook(),
        ],
      ),
      bottomNavigationBar: _buildBottomnavigator(),
    );
  }

  BottomNavigationBar _buildBottomnavigator() {
    return BottomNavigationBar(
      backgroundColor: Colors.grey[900],
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: const Color(0xFF6741FF),

      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home_rounded)
        ),
        BottomNavigationBarItem(
          label: "Book",
          icon: Icon(Icons.menu_book_rounded)
        ),
        BottomNavigationBarItem(
          label: "Column",
          icon: Icon(Icons.view_week_outlined)
        ),
        BottomNavigationBarItem(
          label: "Person",
          icon: Icon(Icons.person_add_alt_1_outlined),
          
        ),
      ],
    );
  }
}
