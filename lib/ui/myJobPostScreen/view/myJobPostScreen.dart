import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/ui/subscription/view/subscriptionScreen.dart';
import 'package:tradesleadapp/utils/CustomAppBar1.dart';
import 'package:tradesleadapp/utils/CustomBottomBar.dart';
import 'package:tradesleadapp/utils/customAppBar.dart';
import 'package:tradesleadapp/utils/customButton.dart';
import 'package:tradesleadapp/utils/customDrawer.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

class MyJobPostScreen1 extends StatefulWidget {
  const MyJobPostScreen1({super.key});

  @override
  State<MyJobPostScreen1> createState() => _MyJobPostScreen1State();
}

class _MyJobPostScreen1State extends State<MyJobPostScreen1> {

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: drawer1(),
      backgroundColor: AppColors.backGround,
      body: Stack(
        children: [
          Column(
            children: [
              CustomAppBar(title: "My Job Posts",showBack: true,showDrawer: true,),

              SizedBox(height: 2.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
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
                                    "Reference Archive",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontFamily: CustomFonts.bold,
                                      color: AppColors.primaryDarkBlue
                                          .withOpacity(0.7),
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 1.h),

                              Text(
                                "My Posted Jobs",
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
                              SizedBox(height: 2.h),
                              Text(
                                "A consolidated record of your active and historical trade requirements within the Artisan ecosystem.",
                                maxLines: 3,
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: CustomFonts.regular,
                                  color: AppColors.primaryDarkBlue,
                                  letterSpacing: 0.2,
                                  height: 1.1,
                                ),
                              ),
                              SizedBox(height: 2.h),

                              InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 4.w,
                                    vertical: 1.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryDarkBlue.withOpacity(
                                      0.05,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.filter_list,
                                        size: 20.sp,
                                        color: AppColors.primaryDarkBlue,
                                      ),
                                      SizedBox(width: 2.w),
                                      Text(
                                        "FILTER",
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          fontFamily: CustomFonts.bold,
                                          color: AppColors.primaryDarkBlue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Stack(
                        children: [
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
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Status: Active",
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                            fontFamily: CustomFonts.bold,
                                            color: AppColors.primaryDarkBlue
                                                .withOpacity(0.7),
                                            letterSpacing: 1.2,
                                          ),
                                        ),

                                        GestureDetector(
                                          onTap: () {
                                            print("Clicked");
                                          },
                                          child: Container(
                                            height: 6.h,
                                            width: 6.h,
                                            decoration: BoxDecoration(
                                              color: AppColors.primaryDarkBlue,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.arrow_forward_rounded,
                                              size: 20.sp,
                                              color: AppColors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 1.h),

                                    Text(
                                      "Victorian Sash Window \nRestoration",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                        height: 1.1,
                                      ),
                                    ),

                                    SizedBox(height: 1.5.h),

                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          size: 18.sp,
                                          color: AppColors.primaryDarkBlue,
                                        ),
                                        SizedBox(width: 1.w),
                                        Text(
                                          "SW18 4JQ",
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                            fontFamily: CustomFonts.regular,
                                            color: AppColors.primaryDarkBlue,
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 1.5.h),

                                    Text(
                                      "Date Posted",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                      ),
                                    ),

                                    SizedBox(height: 0.5.h),

                                    Text(
                                      "Oct 24, 2023",
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                      ),
                                    ),

                                    SizedBox(height: 0.5.h),

                                    Text(
                                      "Required Expertise",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                      ),
                                    ),

                                    SizedBox(height: 1.h),

                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 4.w,
                                            vertical: 1.h,
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColors.primaryDarkBlue
                                                .withOpacity(0.05),
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: Text(
                                            "Master Carpenter",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              fontFamily: CustomFonts.bold,
                                              color: AppColors.primaryDarkBlue,
                                            ),
                                          ),
                                        ),

                                        SizedBox(width: 3.w),

                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 4.w,
                                            vertical: 1.h,
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColors.primaryDarkBlue
                                                .withOpacity(0.05),
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: Text(
                                            "Glazier",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              fontFamily: CustomFonts.bold,
                                              color: AppColors.primaryDarkBlue,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                      SizedBox(height: 2.h),

                      Stack(
                        children: [
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

                              child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "STATUS: QUOTING",
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                            fontFamily: CustomFonts.bold,
                                            color: AppColors.primaryDarkBlue
                                                .withOpacity(0.7),
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            print("Clicked");
                                          },
                                          child: Container(
                                            height: 6.h,
                                            width: 6.h,
                                            decoration: BoxDecoration(
                                              color: AppColors.primaryDarkBlue,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.arrow_forward_rounded,
                                              size: 20.sp,
                                              color: AppColors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 1.h),

                                    Text(
                                      "Kitchen Island Stone \nInstallation",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                        height: 1.1,
                                      ),
                                    ),

                                    SizedBox(height: 1.5.h),

                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          size: 18.sp,
                                          color: AppColors.primaryDarkBlue,
                                        ),
                                        SizedBox(width: 1.w),
                                        Text(
                                          "N1 7GU",
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                            fontFamily: CustomFonts.regular,
                                            color: AppColors.primaryDarkBlue,
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 1.5.h),

                                    Text(
                                      "Date Posted",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                      ),
                                    ),
                                    SizedBox(height: 0.5.h),
                                    Text(
                                      "Oct 20, 2023",
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                      ),
                                    ),

                                    SizedBox(height: 1.5.h),

                                    Text(
                                      "Required Expertise",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                      ),
                                    ),

                                    SizedBox(height: 1.h),

                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 4.w,
                                            vertical: 1.h,
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColors.primaryDarkBlue
                                                .withOpacity(0.05),
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: Text(
                                            "Stonemason",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              fontFamily: CustomFonts.bold,
                                              color: AppColors.primaryDarkBlue,
                                            ),
                                          ),
                                        ),

                                        // SizedBox(width: 3.w),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),

                      SizedBox(height: 2.h),

                      Stack(
                        children: [
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

                              child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "STATUS: COMPLETED",
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                            fontFamily: CustomFonts.bold,
                                            color: AppColors.primaryDarkBlue
                                                .withOpacity(0.7),
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            print("Clicked");
                                          },
                                          child: Container(
                                            height: 6.h,
                                            width: 6.h,
                                            decoration: BoxDecoration(
                                              color: AppColors.primaryDarkBlue,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.access_time_filled,
                                              size: 20.sp,
                                              color: AppColors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 1.h),

                                    Text(
                                      "Garden Studio Electrical \nFit-out",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                        height: 1.1,
                                      ),
                                    ),

                                    SizedBox(height: 1.5.h),

                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          size: 18.sp,
                                          color: AppColors.primaryDarkBlue,
                                        ),
                                        SizedBox(width: 1.w),
                                        Text(
                                          "E14 9GE",
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                            fontFamily: CustomFonts.regular,
                                            color: AppColors.primaryDarkBlue,
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 1.5.h),

                                    Text(
                                      "Date Posted",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                      ),
                                    ),
                                    SizedBox(height: 1.h),
                                    Text(
                                      "Sep 15, 2023",
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                      ),
                                    ),

                                    SizedBox(height: 1.5.h),

                                    Text(
                                      "Required Expertise",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                      ),
                                    ),

                                    SizedBox(height: 1.h),

                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 4.w,
                                            vertical: 1.h,
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColors.primaryDarkBlue
                                                .withOpacity(0.05),
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: Text(
                                            "Electrician",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              fontFamily: CustomFonts.bold,
                                              color: AppColors.primaryDarkBlue,
                                            ),
                                          ),
                                        ),

                                        // SizedBox(width: 3.w),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                      SizedBox(height: 3.h),
                    ],
                  ).paddingSymmetric(horizontal: 4.w),
                ),
              ),
            ],
          ),
        ],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        backgroundColor: AppColors.primaryDarkBlue,
        child: Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: CustomBottomBar(currentIndex: 2,),
    );
  }
}
