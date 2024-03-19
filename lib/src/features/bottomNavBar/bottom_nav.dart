import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  BottomNav(
      {super.key,
      required this.icon,
     
      required this.index,
      required this.onTap});
  final icon;
  int index;
  void Function()? onTap;
  
  @override
  Widget build(
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icon,
        
       
      ),
    );
  }
}