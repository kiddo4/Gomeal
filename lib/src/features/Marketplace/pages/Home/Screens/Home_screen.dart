import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/src/core/constants/gaps.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40.h,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(),
              title: Text(
                    'Welcome back 👋 ',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    ),
              subtitle:  Text(
                    'Olajide williams',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                    ),
                    ),
              trailing: Icon(
                Icons.notifications,
                color: Colors.blue,
                ),
            ),
          ),
          gapH12,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200.h,
              width: double.infinity,
                  
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: 
                  ),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
              ),
              
              ),
          ),
             
          
        ],
      ),
    );
  }
}