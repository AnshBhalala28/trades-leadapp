import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/home/homeScreen_One.dart';
import 'package:tradesleadapp/ui/auth/view/SinupScreen.dart';
import 'package:tradesleadapp/utils/customInputField.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10.h),

              /// 🔹 LOGO
              Center(
                child: Image.asset(
                  "assets/iamges/logo.png",
                  height: 12.h,
                  fit: BoxFit.contain,
                ),
              ),

              SizedBox(height: 3.h),

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
                "The Blue-Chip Marketplace",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.primaryDarkBlue,
                  fontFamily: CustomFonts.regular,
                  fontSize: 17.sp,
                ),
              ),

              SizedBox(height: 3.h),

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
                        offset:  Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      /// Email
                      CustomInputField(
                        label: "Email",
                        hint: "Enter Email",
                        controller: emailController,
                        icon: Icons.email_outlined,
                        inputType: TextInputType.emailAddress,
                      ),

                      SizedBox(height: 2.5.h),

                      /// Password
                      CustomInputField(
                        label: "Password",
                        hint: "Enter Password",
                        controller: passwordController,
                        icon: Icons.lock_outline,
                        inputType: TextInputType.text,
                        isPassword: true,
                      ),

                      SizedBox(height: 1.h),

                      /// Forgot
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: AppColors.primaryDarkBlue,
                              fontFamily: CustomFonts.regular,
                              fontSize: 15.sp,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 2.h),

                      /// 🔹 BUTTON
                      SizedBox(
                        width: double.infinity,
                        height: 6.5.h,
                        child: ElevatedButton(
                          onPressed: () => Get.to(homeScreen_one()),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryDarkBlue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            elevation: 3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: CustomFonts.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 2.w),
                              Icon(Icons.arrow_forward, size: 18.sp,color: AppColors.white,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 3.h),

              GestureDetector(
                onTap: () {
                  Get.to(SingnUpScreen());
                },
                child: RichText(
                  text: TextSpan(
                    text: "New here? ",
                    style: TextStyle(
                      color: AppColors.primaryDarkBlue,
                      fontSize: 15.sp,
                      fontFamily: CustomFonts.regular,
                    ),
                    children: [
                      TextSpan(
                        text: "Join the Registry",
                        style: TextStyle(
                          color: AppColors.primaryDarkBlue,
                          fontFamily: CustomFonts.bold,
                          decoration: TextDecoration.underline,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 4.h),
            ],
          ),
        ),
      ),
    );
  }
}