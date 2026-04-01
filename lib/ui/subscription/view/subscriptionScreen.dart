import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/utils/customAppBar.dart';
import 'package:tradesleadapp/utils/customButton.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

class SubscriptionScreen extends StatefulWidget {
  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: Column(
        children: [
          TitleBar(title: "Subscription Plans", isBackEnabled: true),
          SizedBox(height: 2.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Material(
                    elevation: 6,
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 2.5.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(15),

                        boxShadow: [
                          BoxShadow(
                            color: AppColors.black.withOpacity(0.1),
                            blurRadius: 25,
                            spreadRadius: 1,
                            offset: Offset(0, 10),
                          ),

                          BoxShadow(
                            color: AppColors.black.withOpacity(0.02),
                            blurRadius: 10,
                            offset: Offset(0, -2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 3,
                                height: 18,
                                color: AppColors.primaryDarkBlue,
                              ),
                              SizedBox(width: 2.w),
                              Text(
                                "Account Verification Complete",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: CustomFonts.bold,
                                  color: AppColors.primaryDarkBlue.withOpacity(
                                    0.7,
                                  ),
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 1.h),

                          Text(
                            "Activate Your Profile.",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 17.sp,
                              fontFamily: CustomFonts.bold,
                              color: AppColors.primaryDarkBlue,
                              letterSpacing: 0.2,
                              height: 1.1,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 2.h,),

                  Material(
                    elevation: 6,
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 2.5.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(15),

                        boxShadow: [
                          BoxShadow(
                            color: AppColors.black.withOpacity(0.1),
                            blurRadius: 25,
                            spreadRadius: 1,
                            offset: Offset(0, 10),
                          ),

                          BoxShadow(
                            color: AppColors.black.withOpacity(0.02),
                            blurRadius: 10,
                            offset: Offset(0, -2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor: AppColors.primaryDarkBlue,
                                    child: Text(
                                      "T",
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: 20.sp,
                                        fontFamily: CustomFonts.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 3.w),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Artisan Blue Member",
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          fontFamily: CustomFonts.bold,
                                          color: AppColors.primaryDarkBlue,
                                        ),
                                      ),
                                      Text(
                                        "Approved Tradesperson Status",
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          fontFamily: CustomFonts.regular,
                                          color: AppColors.primaryDarkBlue.withOpacity(0.6),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(width: 2.w),
                            ],
                          ),

                          SizedBox(height: 2.h),

                          Text(
                            "Unlimited leads for one flat monthly rate.",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 17.sp,
                              fontFamily: CustomFonts.bold,
                              color: AppColors.primaryDarkBlue,
                              letterSpacing: 0.2,
                              height: 1.1,
                            ),
                          ),
                          SizedBox(height: 2.h,),
                          Column(
                            children: [
                              _point("Priority placement in local searches"),
                              _point("Instant job notifications via push alerts"),
                              _point("Zero commission on project totals"),
                            ],
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "£40",
                                style: TextStyle(
                                  fontSize: 22.5.sp,
                                  fontFamily: CustomFonts.bold,
                                  color: AppColors.primaryDarkBlue,
                                ),
                              ),
                              SizedBox(width: 1.w),
                              Padding(
                                padding: EdgeInsets.only(bottom: 3),
                                child: Text(
                                  "/month",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    color: AppColors.primaryDarkBlue.withOpacity(0.6),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h,),

                          CustomButton(title: 'START YOUR SUBSCRIPTION', onTap: () {  },
                            backgroundColor: AppColors.primaryDarkBlue,
                            textColor: AppColors.white,
                          )

                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 2.h,),

                  Material(
                    elevation: 6,
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 3.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primaryDarkBlue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [


                          Text(
                            "Download the Mobile\nApp to Start Receiving\nLeads",
                            style: TextStyle(
                              fontSize: 17.sp,
                              fontFamily: CustomFonts.bold,
                              color: AppColors.white,
                              height: 1.3,
                            ),
                          ),

                          SizedBox(height: 1.5.h),


                          Text(
                            "Manage your jobs, chat with clients,\nand upload portfolio shots on the go.",
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontFamily: CustomFonts.regular,
                              color: AppColors.white.withOpacity(0.7),
                              height: 1.4,
                            ),
                          ),

                          SizedBox(height: 2.h),


                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                              horizontal: 4.w,
                              vertical: 1.5.h,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  color: Colors.white24,
                                ),
                                SizedBox(width: 3.w),
                                Text(
                                  "Download on App Store",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontFamily: CustomFonts.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 1.5.h),

                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                              horizontal: 4.w,
                              vertical: 1.5.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.black.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  color: Colors.white24,
                                ),
                                SizedBox(width: 3.w),
                                Text(
                                  "Get it on Google Play",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontFamily: CustomFonts.semiBold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h,),

                  Material(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                    elevation: 6,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 2.5.h,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Scan to Download",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontFamily: CustomFonts.bold,
                                    color: AppColors.primaryDarkBlue,
                                  ),
                                ),

                                SizedBox(height: 1.h),

                                Text(
                                  "Point your camera at the QR code to get the app instantly.",
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: CustomFonts.regular,
                                    color: AppColors.primaryDarkBlue.withOpacity(0.6),
                                    height: 1.4,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 4.w),

                          Container(
                            padding: EdgeInsets.all(2.w),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: AppColors.primaryDarkBlue.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.qr_code,
                                  size: 40,
                                  color: AppColors.primaryDarkBlue,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  Material(
                    elevation: 6,
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 2.5.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [

                          /// 🔒 Secure Payments
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.shield_outlined,
                                color: AppColors.primaryDarkBlue,
                                size: 22,
                              ),
                              SizedBox(width: 3.w),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Secure Payments",
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                      ),
                                    ),
                                    SizedBox(height: 0.5.h),
                                    Text(
                                      "Encrypted billing powered by industry-leading providers. Cancel anytime.",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: CustomFonts.regular,
                                        color: AppColors.primaryDarkBlue.withOpacity(0.6),
                                        height: 1.4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 2.h),

                          /// ⚡ Instant Activation
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.flash_on_outlined,
                                color: AppColors.primaryDarkBlue,
                                size: 22,
                              ),
                              SizedBox(width: 3.w),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Instant Activation",
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                      ),
                                    ),
                                    SizedBox(height: 0.5.h),
                                    Text(
                                      "Your profile goes live immediately after your first subscription payment.",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: CustomFonts.regular,
                                        color: AppColors.primaryDarkBlue.withOpacity(0.6),
                                        height: 1.4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 2.h),

                          /// 🎧 Premium Support
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.support_agent,
                                color: AppColors.primaryDarkBlue,
                                size: 22,
                              ),
                              SizedBox(width: 3.w),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Premium Support",
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                      ),
                                    ),
                                    SizedBox(height: 0.5.h),
                                    Text(
                                      "Dedicated account managers for all Artisan Blue subscribers.",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: CustomFonts.regular,
                                        color: AppColors.primaryDarkBlue.withOpacity(0.6),
                                        height: 1.4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h,),
                ],
              ).paddingSymmetric(horizontal: 4.w),
            ),
          ),
        ],
      ),
    );
  }
  Widget _point(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.2.h),
      child: Row(
        children: [
          Icon(
            Icons.check_circle,
            color: AppColors.primaryDarkBlue,
            size: 18.sp,
          ),
          SizedBox(width: 2.w),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 15.sp,
                color: AppColors.primaryDarkBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
