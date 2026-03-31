import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/utils/CustomTextField.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 20.h),

          /// Header
          Row(
            children: [
              Text(
                "FIND TRADES",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: CustomFonts.bold,
                  letterSpacing: 1,
                  fontSize: 17.sp,
                ),
              ),
            ],
          ),

          SizedBox(height: 3.h),

          /// Title
          Text(
            "THE BLUE-CHIP MARKETPLACE",
            style: TextStyle(
              color: AppColors.buttonNavy,
              fontWeight: FontWeight.bold,
              fontFamily: CustomFonts.bold,
              letterSpacing: 1,
              fontSize: 17.sp,
            ),
          ),

          SizedBox(height: 1.h),

          Text(
            "Welcome Back,\n   Find Trades",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: CustomFonts.bold,
              letterSpacing: 1,
              color: AppColors.primaryDarkBlue,
              fontSize: 20.sp,
            ),
          ),

          SizedBox(height: 4.h),

          /// Email Label
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "EMAIL ADDRESS",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: CustomFonts.regular,
                  letterSpacing: 1,
                  color: AppColors.primaryDarkBlue,
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),

          SizedBox(height: 1.h),

          /// Email Field
          CustomTextField(
            hintText: "Email",
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            prefixIcon: const Icon(Icons.email_outlined),
          ),

          SizedBox(height: 1.h),

          /// Password Label
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "PASSWORD",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: CustomFonts.regular,
                  letterSpacing: 1,
                  color: AppColors.primaryDarkBlue,
                  fontSize: 15.sp,
                ),
              ),
              Text(
                "Forgot Password?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: CustomFonts.regular,
                  letterSpacing: 1,
                  color: AppColors.primaryDarkBlue,
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),

          SizedBox(height: 1.h),

          /// Password Field
          CustomTextField(
            hintText: "••••••••",
            controller: passwordController,
            isPassword: true,
            prefixIcon: const Icon(Icons.lock_outline),
            suffixIcon: const Icon(Icons.visibility_off),
          ),

          SizedBox(height: 5.h),

          /// Sign In Button
          SizedBox(
            width: double.infinity,
            child: GestureDetector(
              onTap: () {
                // action here
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
                      "Sign In",
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

          SizedBox(height: 2.h),

          /// Footer
          Center(
            child: RichText(
              text: TextSpan(
                text: "New here? ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: CustomFonts.regular,
                  letterSpacing: 1,
                  color: Colors.black,
                  fontSize: 15.sp,
                ),
                children: [
                  TextSpan(
                    text: "Join the Registry",
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
        ],
      ).paddingSymmetric(horizontal: 5.w),
    );
  }
}
