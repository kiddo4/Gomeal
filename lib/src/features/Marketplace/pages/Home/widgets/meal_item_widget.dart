import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 200.h,
                width: 100.h,
                    
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
                );
  }
}