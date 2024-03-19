import 'package:flutter/material.dart';
import 'package:myapp/src/features/Marketplace/pages/Home/Screens/Home_screen.dart';
import 'package:myapp/src/features/bottomNavBar/bottom_nav.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<Widget> pageList = [
      HomeScreen(),
    ];
  int pageIndex = 0;
  void changePage(index) {
    setState(() {
      pageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
            
        ),
        child: BottomNav(
          icon: Icon(Icons.home_mini_rounded),
          index: 0,
          onTap: (() => changePage(0)),
        ),
        ),
      ),
    );
  }
}