import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          height: 60.h,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(20),
            
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            BottomNav(
              icon: Icon(
                Icons.home_rounded,
                color: pageIndex == 0
                      ? Colors.blue : Colors.black,
                size: 40,
                ),
              index: 0,
              onTap: (() => changePage(0)),
            ),
            BottomNav(
              icon: Icon(
                Icons.search_off_rounded,
                color: pageIndex == 1
                      ? Colors.blue : Colors.black,
                size: 40,
                ),
              index: 0,
              onTap: (() => changePage(0)),
            ),
          ],
        ),
        ),
      ),
    );
  }
}