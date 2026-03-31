import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/ui/messages/messagesScreen.dart';
import 'package:tradesleadapp/utils/customAppBar.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleBar(
                title: "The Blue Chip",
                isAvatarEnabled: true,
                isBackEnabled: true,
              ),
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
                                fontSize: 16.sp,
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
                                fontSize: 20.sp,
                                fontFamily: CustomFonts.bold,
                                color: AppColors.primaryDarkBlue,
                                letterSpacing: 0.5,
                                height: 1.2,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              children: [
                                buildStatusChip(
                                  count: "12",
                                  label: "ACTIVE",
                                  bgColor: AppColors.primaryDarkBlue,
                                  textColor: AppColors.white,
                                ),

                                SizedBox(width: 3.w),

                                buildStatusChip(
                                  count: "4",
                                  label: "ARCHIVED",
                                  bgColor: AppColors.primaryDarkBlue,
                                  textColor: AppColors.white,
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
                                        fontSize: 17.sp,
                                        fontFamily: CustomFonts.bold,
                                        color: AppColors.primaryDarkBlue,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    leads[i].price,
                                    style: TextStyle(
                                      fontSize: 16.5.sp,
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
                                    size: 20.sp,
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
                                    size: 20.sp,
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
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 2.h),

                              Row(
                                children: [
                                  Expanded(
                                    child: buildBtn(
                                      label: "Message",
                                      icon: Icons.chat_bubble_outline,
                                      color: Color(0xFF0D2451),
                                      isPrimary: true,
                                      onTap: () {
                                        Get.to(() => MessagesScreen());
                                      },
                                    ),
                                  ),
                                  SizedBox(width: 3.w),
                                  Expanded(
                                    child: buildBtn(
                                      label: "Call",
                                      icon: Icons.phone_outlined,
                                      color: Color(0xFFE8EEF9),
                                      isPrimary: false,
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
    );
  }

  Widget buildStatusChip({
    required String count,
    required String label,
    required Color bgColor,
    required Color textColor,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            count,
            style: TextStyle(
              fontSize: 14.sp,
              fontFamily: CustomFonts.semiBold,
              color: textColor,
            ),
          ),
          SizedBox(width: 2.w),
          Text(
            label,
            style: TextStyle(
              fontSize: 14.5.sp,
              fontFamily: CustomFonts.semiBold,
              color: textColor,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBtn({
    required String label,
    required IconData icon,
    required Color color,
    required bool isPrimary,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 1.4.h),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isPrimary ? AppColors.white : AppColors.primaryDarkBlue,
              size: 18.sp,
            ),
            SizedBox(width: 2.w),
            Text(
              label,
              style: TextStyle(
                color: isPrimary ? AppColors.white : AppColors.primaryDarkBlue,
                fontFamily: isPrimary
                    ? CustomFonts.semiBold
                    : CustomFonts.regular,
                fontSize: 15.sp,
              ),
            ),
          ],
        ),
      ),
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
