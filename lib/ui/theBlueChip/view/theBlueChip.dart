import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/ui/messages/view/messagesScreen.dart';
import 'package:tradesleadapp/utils/CustomAppBar1.dart';
import 'package:tradesleadapp/utils/CustomBottomBar.dart';
import 'package:tradesleadapp/utils/customAppBar.dart';
import 'package:tradesleadapp/utils/customButton.dart';
import 'package:tradesleadapp/utils/customDrawer.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

class TheBlueChipScreen extends StatefulWidget {
  TheBlueChipScreen({super.key});

  @override
  State<TheBlueChipScreen> createState() => _TheBlueChipScreenState();
}

class _TheBlueChipScreenState extends State<TheBlueChipScreen> {
  final List<LeadModel> leads = [
    LeadModel(
      title: "Full Rewire: Victorian Terrace",
      price: "£45.00",
      location: "Kensington, London (W8)",
      date: "Required: Within 3 weeks",
    ),
    LeadModel(
      title: "Emergency Pipe Burst",
      price: "£18.50",
      location: "Richmond, Surrey (TW9)",
      date: "URGENT: Immediate",
      isUrgent: true,
    ),
    LeadModel(
      title: "Full Rewire: Victorian Terrace",
      price: "£45.00",
      location: "Kensington, London (W8)",
      date: "Required: Within 3 weeks",
    ),
    LeadModel(
      title: "Emergency Pipe Burst",
      price: "£18.50",
      location: "Richmond, Surrey (TW9)",
      date: "URGENT: Immediate",
      isUrgent: true,
    ),
    LeadModel(
      title: "Full Rewire: Victorian Terrace",
      price: "£45.00",
      location: "Kensington, London (W8)",
      date: "Required: Within 3 weeks",
    ),
    LeadModel(
      title: "Emergency Pipe Burst",
      price: "£18.50",
      location: "Richmond, Surrey (TW9)",
      date: "URGENT: Immediate",
      isUrgent: true,
    ),
  ];
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
              CustomAppBar(title: "The Blue Chip",showBack: true,showDrawer: true,),
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
                              "WORKSPACE",
                              style: TextStyle(
                                fontSize: 14.5.sp,
                                fontFamily: CustomFonts.bold,
                                color: AppColors.primaryDarkBlue,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Text(
                              "My Unlocked Leads",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: CustomFonts.bold,
                                color: AppColors.primaryDarkBlue,
                                letterSpacing: 0.5,
                                height: 1.2,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 3.w,
                                    vertical: 1.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryDarkBlue,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "14",
                                        style: TextStyle(
                                          fontSize: 14.5.sp,
                                          fontFamily: CustomFonts.semiBold,
                                          color: AppColors.white,
                                        ),
                                      ),
                                      SizedBox(width: 2.w),
                                      Text(
                                        "ACTIVE",
                                        style: TextStyle(
                                          fontSize: 14.5.sp,
                                          fontFamily: CustomFonts.semiBold,
                                          color: AppColors.white,
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(width: 3.w),

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
                                      Text(
                                        "4",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontFamily: CustomFonts.semiBold,
                                          color: AppColors.white,
                                        ),
                                      ),
                                      SizedBox(width: 2.w),
                                      Text(
                                        "ARCHIVED",
                                        style: TextStyle(
                                          fontSize: 14.5.sp,
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
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h),

                      for (int i = 0; i < leads.length; i++)
                        Container(
                          margin: EdgeInsets.only(bottom: 2.5.h),
                          padding: EdgeInsets.all(4.w),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.black.withOpacity(0.12),
                                blurRadius: 20,
                                spreadRadius: 1,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      leads[i].title,
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    leads[i].price,
                                    style: TextStyle(
                                      fontSize: 14.5.sp,
                                      fontFamily: CustomFonts.bold,
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 1.5.h),

                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 18.sp,
                                    color: AppColors.primaryDarkBlue,
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    leads[i].location,
                                    style: TextStyle(
                                      color: AppColors.primaryDarkBlue,
                                      fontSize: 15.sp,
                                      fontFamily: CustomFonts.regular,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 1.h),

                              Row(
                                children: [
                                  Icon(
                                    leads[i].isUrgent
                                        ? Icons.error_outline
                                        : Icons.calendar_today_outlined,
                                    size: 18.sp,
                                    color: leads[i].isUrgent
                                        ? Colors.red
                                        : AppColors.primaryDarkBlue,
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    leads[i].date,
                                    style: TextStyle(
                                      color: leads[i].isUrgent
                                          ? Colors.red
                                          : AppColors.primaryDarkBlue,

                                      fontFamily: leads[i].isUrgent
                                          ? CustomFonts.bold
                                          : CustomFonts.regular,
                                      fontSize: 14.5.sp,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 2.h),

                              Row(
                                children: [
                                  Expanded(
                                    child: CustomButton(
                                     width: 28.w,
                                      title: "Message",
                                      backgroundColor:
                                          AppColors.primaryDarkBlue,
                                      textColor: AppColors.white,
                                      onTap: () {
                                        Get.to(() => MessagesScreen());
                                      },
                                    ),
                                  ),
                                  SizedBox(width: 3.w),
                                  Expanded(
                                    child: CustomButton(
                                      title: "Call",
                                      backgroundColor:
                                      AppColors.primaryDarkBlue.withOpacity(0.05),
                                      textColor: AppColors.primaryDarkBlue,
                                      onTap: () {
                                        Get.to(() => MessagesScreen());
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                    ],
                  ).paddingSymmetric(horizontal: 4.w),
                ),
              ),

              SizedBox(height: 5.h),
            ],
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(currentIndex: 0,),
    );
  }

}

class LeadModel {
  final String title;
  final String price;
  final String location;
  final String date;
  final bool isUrgent;

  LeadModel({
    required this.title,
    required this.price,
    required this.location,
    required this.date,
    this.isUrgent = false,
  });
}
