import 'package:cached_network_image/cached_network_image.dart';
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
              leading: const CircleAvatar(),
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
              trailing: const Icon(
                Icons.notifications,
                color: Colors.blue,
                ),
            ),
          ),
          gapH12,
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 200.h,
              width: double.infinity,
                  
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://www.chicken-republic.com/wp-content/uploads/2021/10/CITIZENS-SPICY-YAM-MEAL-DARK.jpg'),
                    fit: BoxFit.fill
                  
                  ),
                
                borderRadius: BorderRadius.circular(20)
              ),
              
              ),
          ),
          gapH12,
          
             
          
        ],
      ),
    );
  }
}