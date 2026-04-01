import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/utils/CustomBottomBar.dart';
import 'package:tradesleadapp/utils/CustomTextField.dart';
import 'package:tradesleadapp/utils/customInputField.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

import 'LoginScreen.dart';

class SingnUpScreen extends StatefulWidget {
  SingnUpScreen({super.key});

  @override
  State<SingnUpScreen> createState() => _SingnUpScreenState();
}

class _SingnUpScreenState extends State<SingnUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController fullname = TextEditingController();
  final TextEditingController phone = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  String selectedRole = "user";
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5.h),

            Center(
              child: Image.asset(
                "assets/iamges/logo.png",
                height: 12.h,
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(height: 2.h),

            Text(
              "FIND TRADES",
              style: TextStyle(
                fontFamily: CustomFonts.bold,
                letterSpacing: 1.5,
                fontSize: 17.sp,
                color: AppColors.primaryDarkBlue,
              ),
            ),

            SizedBox(height: 1.h),

            Text(
              "Crate Your Account",
              style: TextStyle(

                fontFamily: CustomFonts.bold,
                letterSpacing: 1,
                color: AppColors.primaryDarkBlue,
                fontSize: 17.sp,
              ),
            ),

            SizedBox(height: 1.h),

            Material(
              elevation: 5,
              color: AppColors.white,
              borderRadius: BorderRadius.circular(25),
              child: Container(
                padding: EdgeInsets.all(5.w),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withOpacity(0.05),
                      blurRadius: 25,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    /// Email
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedRole = "user";
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: selectedRole == "user"
                                    ? AppColors.primaryDarkBlue
                                    : AppColors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Text(
                                "User",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: CustomFonts.regular,
                                  letterSpacing: 1,
                                  color: selectedRole == "user"
                                      ? AppColors.white
                                      : AppColors.black,
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 10),

                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedRole = "trader";
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 14),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: selectedRole == "trader"
                                    ? Color(0xff0A2540)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Text(
                                "Trader",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: CustomFonts.regular,
                                  letterSpacing: 1,
                                  color: selectedRole == "trader"
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h),

                    CustomInputField(
                      label: 'Full Name',
                      hint: "Enter Full Name",
                      controller: fullname,
                      icon: Icons.person,
                      inputType: TextInputType.text,
                    ),

                    SizedBox(height: 1.5.h),

                    CustomInputField(
                      label: 'Email',
                      hint: "Enter Email",
                      controller: emailController,
                      icon: Icons.email,
                      inputType: TextInputType.text,
                    ),

                    SizedBox(height: 1.5.h),

                    CustomInputField(
                      label: 'Phone Number',
                      hint: "Enter Phone Number",
                      controller: phone,
                      icon: Icons.phone,
                      inputType: TextInputType.phone,
                    ),

                    SizedBox(height: 1.5.h),

                    CustomInputField(
                      label: 'Password',
                      hint: "Enter Password",
                      controller: passwordController,
                      icon: Icons.lock,
                      inputType: TextInputType.text,
                      isPassword: true,
                    ),

                    SizedBox(height: 1.h),

                    SizedBox(height: 2.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "PRIMARY EXPERTISE CATEGORY",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: CustomFonts.regular,
                            letterSpacing: 1,
                            color: AppColors.primaryDarkBlue,
                            fontSize: 15.sp,
                          ),
                        ),

                        SizedBox(height: 2.h),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              _chip("Electrical Master", Icons.bolt),
                              SizedBox(width: 3.w),
                              _chip("Plumbing", Icons.plumbing),
                              SizedBox(width: 3.w),
                              _chip("Carpentry", Icons.handyman),
                              SizedBox(width: 3.w),
                              _chip("Interior Finishes", Icons.chair),
                              SizedBox(width: 3.w),
                              _chip("Other", Icons.add),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),

                    SizedBox(
                      width: double.infinity,
                      child: GestureDetector(
                        onTap: () {
                          Get.to(LoginScreen());
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 1.5.h),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.primaryDarkBlue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(null),
                              Text(
                                "Create Account",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: CustomFonts.regular,
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                ),
                              ),
                              Icon(Icons.arrow_forward, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 2.h),

            Center(
              child: InkWell(
                onTap: () {
                  Get.to(LoginScreen());
                },
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: CustomFonts.regular,
                      letterSpacing: 1,
                      color: Colors.black,
                      fontSize: 15.sp,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign In",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: CustomFonts.bold,
                          letterSpacing: 1,
                          color: AppColors.primaryDarkBlue,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 5.h),
          ],
        ).paddingSymmetric(horizontal: 5.w),
      ),
    );
  }

  String selectedCategory = "Electrical Master";

  Widget _chip(String title, IconData icon) {
    final bool isSelected = selectedCategory == title;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = title;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xff0A2540) : Color(0xffEDEFF5),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 16,
              color: isSelected ? Colors.white : Colors.black,
            ),
            SizedBox(width: 1.w),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: CustomFonts.regular,
                letterSpacing: 1,
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
