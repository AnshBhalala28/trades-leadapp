import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/ui/theBlueChip/view/theBlueChip.dart';
import 'package:tradesleadapp/utils/customAppBar.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

class MyJobPostScreen extends StatefulWidget {
  const MyJobPostScreen({super.key});

  @override
  State<MyJobPostScreen> createState() => _MyJobPostScreenState();
}

class _MyJobPostScreenState extends State<MyJobPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: Stack(
        children: [
          Column(
            children: [
              TitleBar(title: "My Job Posts", isBackEnabled: true),
              SizedBox(height: 2.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                          vertical: 3.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(15),

                          boxShadow: [
                            BoxShadow(
                              color: AppColors.black.withOpacity(0.08),
                              blurRadius: 15,
                              spreadRadius: 2,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Reference Archive",
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: CustomFonts.bold,
                                color: AppColors.primaryDarkBlue,
                              ),
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
                                letterSpacing: 0.5,
                                height: 1.2,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Text(
                              "A consolidated record of your active and historical trade requirements within the Artisan ecosystem.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: CustomFonts.regular,
                                color: AppColors.primaryDarkBlue,
                                letterSpacing: 0.5,
                                height: 1.2,
                              ),
                            ),
                            SizedBox(height: 1.5.h),
                            InkWell(
                              onTap: () {
                                Get.to(() => TheBlueChipScreen());
                              },
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4.w,
                                      vertical: 1.h,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryDarkBlue,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.filter_list,
                                          size: 18.sp,
                                          color: AppColors.white,
                                        ),
                                        SizedBox(width: 2.w),
                                        Text(
                                          "FILTER",
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                            fontFamily: CustomFonts.semiBold,
                                            color: AppColors.white,
                                            letterSpacing: 0.5,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 2.h),

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                          vertical: 3.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(15),

                          boxShadow: [
                            BoxShadow(
                              color: AppColors.black.withOpacity(0.08),
                              blurRadius: 15,
                              spreadRadius: 2,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "STATUS: ",
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: CustomFonts.bold,
                                    color: AppColors.primaryDarkBlue

                                  ),
                                ),
                                SizedBox(width: 2.w),
                                Text(
                                  "ACTIVE",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: CustomFonts.regular,
                                    color: AppColors.primaryDarkBlue
                                        .withOpacity(0.7),
                                    letterSpacing: 0.5,
                                    height: 1.2,
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
                                letterSpacing: 0.5,
                                height: 1.2,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 18.sp,
                                  color: AppColors.primaryDarkBlue,
                                ),
                                SizedBox(width: 2.w,),
                                Text(
                                  "SW1 4JQ ",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: CustomFonts.regular,
                                    color: AppColors.primaryDarkBlue,
                                    letterSpacing: 0.5,
                                    height: 1.2,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 1.h,),

                            Text(
                              "DATE POSTED: ",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: CustomFonts.regular,
                                color: AppColors.primaryDarkBlue,
                                letterSpacing: 0.5,
                                height: 1.2,
                              ),
                            ),
                            SizedBox(height: 0.5.h),
                            Text(
                              "OCT 12, 2024",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: CustomFonts.regular,
                                color: AppColors.primaryDarkBlue,
                                letterSpacing: 0.5,
                                height: 1.2,
                              ),
                            ),


                          ],
                        ),
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 4.w),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
