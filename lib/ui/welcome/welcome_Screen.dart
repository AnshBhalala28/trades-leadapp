import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/ui/auth/view/LoginScreen.dart';

import '../../utils/importantStrings.dart';
import '../auth/view/SinupScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.network(
              "https://images.unsplash.com/photo-1600585154340-be6161a56a0c",
              fit: BoxFit.cover,
            ),
          ),

          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white30.withOpacity(0.2), // top dark
                  Colors.black.withOpacity(0.4), // middle
                  Colors.black.withOpacity(0.8), // bottom more dark
                ],
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),

                  Text(
                    "Find Trade",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: CustomFonts.bold,
                    ),
                  ),

                  SizedBox(height: 1.h),

                  Text(
                    "Post jobs for free.\nGet connected with trusted professionals.\nUnlock real leads instantly.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16.sp,
                      fontFamily: CustomFonts.medium,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 3.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.work, color: Colors.white),
                          SizedBox(height: 5),
                          Text(
                            "Post Jobs",
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontFamily: CustomFonts.medium,
                              fontSize: 15.sp,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.people, color: Colors.white),
                          SizedBox(height: 5),
                          Text(
                            "Find Trades",
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontFamily: CustomFonts.medium,
                              fontSize: 15.sp,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.chat, color: Colors.white),
                          SizedBox(height: 5),
                          Text(
                            "Chat Directly",
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontFamily: CustomFonts.medium,
                              fontSize: 15.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 40),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryDarkBlue,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Get.to(LoginScreen());
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: CustomFonts.medium,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 3.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
