import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/ui/theBlueChip/view/theBlueChip.dart';
import 'package:tradesleadapp/utils/CustomAppBar1.dart';
import 'package:tradesleadapp/utils/CustomBottomBar.dart';
import 'package:tradesleadapp/utils/customAppBar.dart';
import 'package:tradesleadapp/utils/customButton.dart';
import 'package:tradesleadapp/utils/customDrawer.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

import '../../messages/view/messagesScreen.dart';

class AvailableLeadScreen extends StatefulWidget {
  AvailableLeadScreen({super.key});

  @override
  State<AvailableLeadScreen> createState() => _AvailableLeadScreenState();
}

class _AvailableLeadScreenState extends State<AvailableLeadScreen> {
  double rating = 0;

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(title: "Available Lead",showBack: true,showDrawer: true,),

              SizedBox(height: 2.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
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
                                  width: 1.w,
                                  height: 3.h,
                                  color: AppColors.primaryDarkBlue,
                                ),
                                SizedBox(width: 2.w),
                                Text(
                                  "MARKETPLACE ACTIVE",
                                  style: TextStyle(
                                    fontSize: 14.sp,
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
                              "Available Leads",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: CustomFonts.bold,
                                color: AppColors.primaryDarkBlue,
                                letterSpacing: 0.2,
                                height: 1.1,
                              ),
                            ),
                            SizedBox(height: 1.h),

                            Container(
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
                                    "All Trade Types",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: CustomFonts.bold,
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 1.h),

                      Container(
                        padding: EdgeInsets.all(4.w),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primaryDarkBlue.withOpacity(
                                0.12,
                              ),
                              blurRadius: 30,
                              spreadRadius: 2,
                              offset: Offset(0, 15),
                            ),
                            BoxShadow(
                              color: AppColors.black.withOpacity(0.03),
                              blurRadius: 10,
                              spreadRadius: -2,
                              offset: Offset(0, -5),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 2.w,
                                    vertical: 0.6.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryDarkBlue
                                        .withOpacity(0.05),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "[OPEN LEAD]",
                                    style: TextStyle(
                                      color: AppColors.primaryDarkBlue,
                                      fontFamily: CustomFonts.semiBold,
                                      fontSize: 14.5.sp,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "QUOTE PRICE",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: AppColors.primaryDarkBlue
                                            .withOpacity(0.6),
                                        fontFamily: CustomFonts.medium,
                                      ),
                                    ),
                                    Text(
                                      "£20.00",
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            SizedBox(height: 1.h),

                            Text(
                              "Kitchen Extension",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: CustomFonts.bold,
                                color: AppColors.primaryDarkBlue,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.primaryDarkBlue,
                                  size: 17.sp,
                                ),
                                SizedBox(width: 1.w),
                                Text(
                                  "Fulham, SW6",
                                  style: TextStyle(
                                    fontSize: 14.5.sp,
                                    fontFamily: CustomFonts.regular,
                                    color: AppColors.primaryDarkBlue,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 1.h),

                            Text(
                              "Full structural extension for a Victorian terrace. Architect drawings approved. Looking for experienced masonry specialists.",
                              style: TextStyle(
                                fontSize: 14.5.sp,
                                color: AppColors.primaryDarkBlue,
                                fontFamily: CustomFonts.regular,
                                height: 1.5,
                              ),
                            ),

                            SizedBox(height: 3.h),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 15.w,
                                  child: Stack(
                                    children: [
                                      CircleAvatar(
                                        radius: 18.sp,
                                        backgroundColor: Colors.grey.shade300,
                                        child: ClipOval(
                                          child: Image.network(
                                            "https://i.pravatar.cc/150?img=3",

                                            width: 8.w,
                                            height: 8.w,
                                            fit: BoxFit.cover,
                                            loadingBuilder:
                                                (context, child, progress) {
                                                  if (progress == null)
                                                    return child;
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 15,
                                                      height: 15,
                                                      child:
                                                          CircularProgressIndicator(
                                                            strokeWidth: 2,
                                                            color: AppColors
                                                                .primaryDarkBlue,
                                                          ),
                                                    ),
                                                  );
                                                },

                                            // 🔹 Error fallback
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                                  return Icon(
                                                    Icons.person,
                                                    color: Colors.grey,
                                                    size: 18.sp,
                                                  );
                                                },
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 20,
                                        child: CircleAvatar(
                                          radius: 18.sp,
                                          backgroundColor:
                                              AppColors.primaryDarkBlue,
                                          child: Text(
                                            "+2",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: AppColors.white,
                                              fontFamily: CustomFonts.regular,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 28.w,
                                  child: CustomButton(
                                    title: "Buy Lead",
                                    onTap: () {
                                      Get.to(() => TheBlueChipScreen());
                                    },
                                    backgroundColor: AppColors.primaryDarkBlue,
                                    textColor: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 1.h),

                      Container(
                        padding: EdgeInsets.all(5.w),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primaryDarkBlue.withOpacity(
                                0.12,
                              ),
                              blurRadius: 30,
                              spreadRadius: 2,
                              offset: Offset(0, 15),
                            ),
                            BoxShadow(
                              color: AppColors.black.withOpacity(0.03),
                              blurRadius: 10,
                              spreadRadius: -2,
                              offset: Offset(0, -5),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 3.w,
                                    vertical: 0.8.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.green.withOpacity(0.05),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "[SELECTED CUSTOMER]",
                                    style: TextStyle(
                                      color: AppColors.green,
                                      fontFamily: CustomFonts.semiBold,
                                      fontSize: 14.5.sp,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 3.w,
                                    vertical: 0.8.h,
                                  ),
                                  child: Icon(
                                    Icons.check_circle,
                                    color: AppColors.green,
                                  size: 18.sp,),
                                ),
                              ],
                            ),

                            SizedBox(height: 1.h),

                            Text(
                              "Bespoke Garden Office",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: CustomFonts.bold,
                                color: AppColors.primaryDarkBlue,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.primaryDarkBlue,
                                  size: 17.sp,
                                ),
                                SizedBox(width: 1.w),
                                Text(
                                  "Richmond, TW10",
                                  style: TextStyle(
                                    fontSize: 14.5.sp,
                                    fontFamily: CustomFonts.regular,
                                    color: AppColors.primaryDarkBlue,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 1.h),

                            Text(
                              "Timber-framed insulated garden studio with electrical fit-out. You were selected for this job. Review project details and confirm start date.",
                              style: TextStyle(
                                fontSize: 14.5.sp,
                                color: AppColors.primaryDarkBlue,
                                fontFamily: CustomFonts.regular,
                                height: 1.5,
                              ),
                            ),

                            SizedBox(height: 3.h),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // LEFT TEXT
                                Expanded(
                                  child: Text(
                                    "Accepted 2h ago",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14.5.sp,
                                      color: AppColors.grey,
                                      fontFamily: CustomFonts.semiBold,
                                    ),
                                  ),
                                ),

                                SizedBox(width: 8),

                                SizedBox(
                                  width: 28.w,
                                  child: CustomButton(
                                    title: "View Details",
                                    onTap: () {
                                      Get.to(() => MessagesScreen());
                                    },
                                    backgroundColor: AppColors.grey,
                                    textColor: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 2.h),

                      Container(
                        padding: EdgeInsets.all(5.w),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primaryDarkBlue.withOpacity(
                                0.12,
                              ),
                              blurRadius: 30,
                              spreadRadius: 2,
                              offset: Offset(0, 15),
                            ),
                            BoxShadow(
                              color: AppColors.black.withOpacity(0.03),
                              blurRadius: 10,
                              spreadRadius: -2,
                              offset: Offset(0, -5),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 3.w,
                                    vertical: 0.8.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryDarkBlue
                                        .withOpacity(0.05),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "[MAX QUOTES REACHED]",
                                    style: TextStyle(
                                      color: AppColors.primaryDarkBlue,
                                      fontFamily: CustomFonts.semiBold,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 1.h),

                            Text(
                              "Re-wiring 3-Bed Semi",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: CustomFonts.bold,
                                color: AppColors.primaryDarkBlue,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.primaryDarkBlue,
                                  size: 18.sp,
                                ),
                                SizedBox(width: 1.w),
                                Text(
                                  "Clapham, SW4",
                                  style: TextStyle(
                                    fontSize: 14.5.sp,
                                    fontFamily: CustomFonts.regular,
                                    color: AppColors.primaryDarkBlue,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 1.h),

                            Text(
                              "Complete electrical re-wiring of a residential property. All sockets and lighting fixtures included in scope.",
                              style: TextStyle(
                                fontSize: 14.5.sp,
                                color: AppColors.primaryDarkBlue,
                                fontFamily: CustomFonts.regular,
                                height: 1.5,
                              ),
                            ),

                            SizedBox(height: 3.h),

                            CustomButton(
                              title: "Lead Closed",
                              onTap: () {
                                Get.to(() => MessagesScreen());
                              },
                              backgroundColor: AppColors.grey,
                              textColor: AppColors.white,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 2.h),

                      Container(
                        padding: EdgeInsets.all(5.w),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primaryDarkBlue.withOpacity(
                                0.12,
                              ),
                              blurRadius: 30,
                              spreadRadius: 2,
                              offset: Offset(0, 15),
                            ),
                            BoxShadow(
                              color: AppColors.black.withOpacity(0.03),
                              blurRadius: 10,
                              spreadRadius: -2,
                              offset: Offset(0, -5),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 3.w,
                                    vertical: 0.8.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryDarkBlue
                                        .withOpacity(0.05),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "[OPEN LEAD]",
                                    style: TextStyle(
                                      color: AppColors.primaryDarkBlue,
                                      fontFamily: CustomFonts.semiBold,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "QUOTE PRICE",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: AppColors.primaryDarkBlue
                                            .withOpacity(0.6),
                                        fontFamily: CustomFonts.medium,
                                      ),
                                    ),
                                    Text(
                                      "£15.00",
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            SizedBox(height: 1.h),

                            Text(
                              "Emergency Roof Leak",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: CustomFonts.bold,
                                color: AppColors.primaryDarkBlue,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.primaryDarkBlue,
                                  size: 17.sp,
                                ),
                                SizedBox(width: 1.w),
                                Text(
                                  "Wimbledon, SW19",
                                  style: TextStyle(
                                    fontSize: 14.5.sp,
                                    fontFamily: CustomFonts.regular,
                                    color: AppColors.primaryDarkBlue,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 1.h),

                            Text(
                              "Urgent repair required for flat roof after heavy storm. Potential insurance claim. High priority response needed today.",
                              style: TextStyle(
                                fontSize: 14.5.sp,
                                color: AppColors.primaryDarkBlue,
                                fontFamily: CustomFonts.regular,
                                height: 1.5,
                              ),
                            ),

                            SizedBox(height: 2.h),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 2.w,
                                    vertical: 0.8.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.red.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "URGENT",
                                    style: TextStyle(
                                      color: AppColors.red,
                                      fontFamily: CustomFonts.semiBold,
                                      fontSize: 14.5.sp,
                                    ),
                                  ),
                                ),

                                SizedBox(width: 8),

                                SizedBox(
                                  width: 28.w,
                                  child: CustomButton(
                                    title: "Claim Lead",
                                    onTap: () {
                                      Get.to(() => MessagesScreen());
                                    },
                                    backgroundColor: AppColors.primaryDarkBlue,
                                    textColor: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 2.h),

                      Container(
                        width: 100.w,
                        padding: EdgeInsets.all(4.w),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0,
                              top: -1,
                              child: Text(
                                rating.toString(),
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  fontFamily: CustomFonts.semiBold,
                                  color: AppColors.blue.withOpacity(0.2),
                                ),
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "MARKET PERFORMANCE",
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    letterSpacing: 1.2,
                                    color: AppColors.grey,
                                    fontFamily: CustomFonts.semiBold,
                                  ),
                                ),

                                SizedBox(height: 1.h),

                                Text(
                                  "Expertise Rating",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: CustomFonts.bold,
                                    color: AppColors.primaryDarkBlue,
                                  ),
                                ),

                                SizedBox(height: 1.h),

                                Text(
                                  "Your profile is currently outperforming 85% of local tradespeople in your category.",
                                  style: TextStyle(
                                    fontSize: 14.5.sp,
                                    color: AppColors.primaryDarkBlue,
                                    fontFamily: CustomFonts.regular,
                                  ),
                                ),

                                SizedBox(height: 1.h),

                                Row(
                                  children: List.generate(5, (index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          rating = (index + 1).toDouble();
                                        });
                                      },
                                      child: Icon(
                                        index < rating
                                            ? Icons.star
                                            : Icons.star_border,
                                        color: AppColors.primaryDarkBlue,
                                        size: 20.sp,
                                      ),
                                    );
                                  }),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Container(
                        width: 100.w,
                        padding: EdgeInsets.all(5.w),
                        decoration: BoxDecoration(
                          color: AppColors.primaryDarkBlue,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              blurRadius: 12,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [


                            Icon(
                              Icons.insights_outlined,
                              color: AppColors.white.withOpacity(0.7),
                              size: 19.sp,
                            ),

                            SizedBox(height: 1.h),

                            Text(
                              "CONVERSION TIP",
                              style: TextStyle(
                                fontSize: 14.5.sp,
                                fontFamily: CustomFonts.semiBold,
                                color: AppColors.white.withOpacity(0.6),
                                letterSpacing: 1.2,
                              ),
                            ),

                            SizedBox(height: 0.5.h),

                            Text(
                              "Adding detailed before/after photos increases your selection rate by 40%.",
                              style: TextStyle(
                                fontSize: 15.5.sp,
                                fontFamily: CustomFonts.regular,
                                color: AppColors.white,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 5.h),
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
          // 🔥 action
        },
        backgroundColor: AppColors.primaryDarkBlue,
        child: Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: CustomBottomBar(currentIndex: 1,),
    );
  }
}
