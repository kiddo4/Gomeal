import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/src/core/constants/gaps.dart';
import 'package:myapp/src/features/Marketplace/pages/Home/widgets/meal_item_widget.dart';
import 'package:myapp/src/features/Marketplace/pages/Home/models/meal_item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 40.h,),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider('https://play-lh.googleusercontent.com/CzbMWvXdZVJMYPK_devEW2PGQmczccJcvaVaamhaa9wJnhu6fa6euK1Ci8xqu3l60Q'),
                  radius: 30,
                ),
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
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://www.chicken-republic.com/wp-content/uploads/2021/10/CITIZENS-SPICY-YAM-MEAL-DARK.jpg'
                      
                      ),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
                    ),
                  borderRadius: BorderRadius.circular(20)
                  
                ),
                
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                   
                    children: [
                      Row(
                        children: [
                      Text(
                        ' Hot Meals 🔥 ',
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        ],
                      ),
                      SizedBox(height: 95.h,),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          ' chicken republic ',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                          ),
                          textAlign: TextAlign.end,
                          ),
                      ),
                    ],
                  ),
                ),
                ),
            ),
            gapH12,
      
            SizedBox(
                child: Column(
                  children: [
                     Align(
                      alignment: Alignment.topLeft,
                       child: Text(
                          ' For you ',
                          style: GoogleFonts.poppins(
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                          ),
                         
                          ),
                     ),
                     ListView.builder(
                      itemCount: dummyData.lenght,
                      itemBuilder: ((context, index) {
                        return MealItem();
                      })
                      )
                  ],
                ),
              ),
            
               
            
          ],
        ),
      ),
    );
  }
}