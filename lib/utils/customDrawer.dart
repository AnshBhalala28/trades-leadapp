import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/home/homeScreen_One.dart';
import 'package:tradesleadapp/ui/leads/view/availableLeadScreen.dart';
import 'package:tradesleadapp/ui/messages/view/messagesScreen.dart';
import 'package:tradesleadapp/ui/myJobPostScreen/view/myJobPostScreen.dart';
import 'package:tradesleadapp/ui/profile/view/profileScreen.dart';
import 'package:tradesleadapp/ui/requestQuote/view/requestQuote.dart';
import 'package:tradesleadapp/ui/subscription/view/subscriptionScreen.dart';
import 'package:tradesleadapp/ui/theBlueChip/view/theBlueChip.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

class drawer1 extends StatefulWidget {
  const drawer1({Key? key}) : super(key: key);

  @override
  State<drawer1> createState() => _drawer1State();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
bool isloading = true;

class _drawer1State extends State<drawer1> {
  @override
  bool isLoading = true;

  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    bool isPhone = MediaQuery.of(context).size.shortestSide < 600;
    double widthDrawer = isPhone
        ? MediaQuery.of(context).size.width * 0.75
        : 150.w;

    return Drawer(
      width: widthDrawer,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: widthDrawer,
        color: AppColors.white,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.w),
                      padding: EdgeInsets.symmetric(
                        vertical: 1.h,
                        horizontal: 2.w,
                      ),
                      height: 20.w,
                      width: 20.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: AppColors.primaryDarkBlue, // Border color
                          width: 2.sp, // Border width
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://www.pngguru.in/storage/uploads/images/anime-characters-png-transparent-images-free-download_1737797319_1246200691.webp",
                          fit: BoxFit.cover,
                          progressIndicatorBuilder: (context, url, progress) =>
                              Container(
                                alignment: Alignment.center,
                                child: Center(
                                  child: CircularProgressIndicator(
                                    color: AppColors.primaryDarkBlue,
                                  ),
                                ),
                              ),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.person),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 40.w,
                          child: Text(
                            "Aryan Patel",
                            style: TextStyle(
                              letterSpacing: 1,
                              color: AppColors.primaryDarkBlue,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.normal,
                              fontFamily: CustomFonts.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40.w,
                          child: Text(
                            "AryanPatel@gmail.com",
                            style: TextStyle(
                              letterSpacing: 1,
                              color: AppColors.primaryDarkBlue,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.normal,
                              fontFamily: CustomFonts.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(color: Colors.grey, thickness: 3.sp),
                InkWell(
                  onTap: () {
                     Get.to(homeScreen_one());
                  },
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(width: 6.w),
                        Container(
                          width: 64.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 10.w,
                                    height: 10.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                    child: Icon(
                                      CupertinoIcons.home,
                                      color: AppColors.white,
                                      size: 18.sp,
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    "Home",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                     fontFamily: CustomFonts.bold,
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.chevron_right_rounded,
                                color: AppColors.primaryDarkBlue,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                InkWell(
                  onTap: () {
                     Get.to(()=> AvailableLeadScreen());
                  },
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(width: 6.w),
                        Container(
                          width: 64.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 10.w,
                                    height: 10.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                    child: Icon(
                                      Icons.group,
                                      color: AppColors.white,
                                      size: 18.sp,
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    "Lead",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                     fontFamily: CustomFonts.bold,
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.chevron_right_rounded,
                                color: AppColors.primaryDarkBlue,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.h),

                InkWell(
                  onTap: () {
                     Get.to(MessagesScreen());
                  },
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(width: 6.w),
                        Container(
                          width: 64.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 10.w,
                                    height: 10.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                    child: Icon(
                                      Icons.chat,
                                      color: AppColors.white,
                                      size: 18.sp,
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    "Chats",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                     fontFamily: CustomFonts.bold,
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.chevron_right_rounded,
                                color: AppColors.primaryDarkBlue,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.h),

                InkWell(
                  onTap: () {
                     Get.to(MyJobPostScreen1());
                  },
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(width: 6.w),
                        Container(
                          width: 64.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 10.w,
                                    height: 10.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                    child: Icon(
                                      CupertinoIcons.building_2_fill,
                                      color: AppColors.white,
                                      size: 18.sp,
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    "My Job Posts",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                     fontFamily: CustomFonts.bold,
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.chevron_right_rounded,
                                color: AppColors.primaryDarkBlue,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.h),

                InkWell(
                  onTap: () {
                    Get.to(TheBlueChipScreen());
                  },
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(width: 6.w),
                        Container(
                          width: 64.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 10.w,
                                    height: 10.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                    child: Icon(
                                      Icons.verified,
                                      color: AppColors.white,
                                      size: 18.sp,
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    "The Blue Chip",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                     fontFamily: CustomFonts.bold,
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.chevron_right_rounded,
                                color: AppColors.primaryDarkBlue,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                InkWell(
                  onTap: () {
                    Get.to(RequestQuoteScreen());
                  },
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(width: 6.w),
                        Container(
                          width: 64.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 10.w,
                                    height: 10.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                    child: Icon(
                                      Icons.request_quote,
                                      color: AppColors.white,
                                      size: 18.sp,
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    "Request Quote",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                     fontFamily: CustomFonts.bold,
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.chevron_right_rounded,
                                color: AppColors.primaryDarkBlue,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
           
                SizedBox(height: 2.h),
                InkWell(
                  onTap: () {
                     Get.to(SubscriptionScreen());
                  },
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(width: 6.w),
                        Container(
                          width: 64.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 10.w,
                                    height: 10.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                    child: Icon(
                                      Icons.workspace_premium_outlined,
                                      color: AppColors.white,
                                      size: 18.sp,
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    "Subscription",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                     fontFamily: CustomFonts.bold,
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.chevron_right_rounded,
                                color: AppColors.primaryDarkBlue,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                InkWell(
                  onTap: () {
                    Get.to(ProfileScreen());
                  },
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(width: 6.w),
                        Container(
                          width: 64.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 10.w,
                                    height: 10.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                    child: Icon(
                                      CupertinoIcons.person,
                                      color: AppColors.white,
                                      size: 18.sp,
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    "Profile",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                     fontFamily: CustomFonts.bold,
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.chevron_right_rounded,
                                color: AppColors.primaryDarkBlue,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.h),

                InkWell(
                  onTap: () {
                    showbootomsheetremove();
                  },
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(width: 6.w),
                        Container(
                          width: 64.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 10.w,
                                    height: 10.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                    child: Icon(
                                      Icons.login,
                                      color: AppColors.white,
                                      size: 18.sp,
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    "Logout",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                     fontFamily: CustomFonts.bold,
                                      color: AppColors.primaryDarkBlue,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.chevron_right_rounded,
                                color: AppColors.primaryDarkBlue,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  showbootomsheetremove() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                color: Colors.white,
              ),
              height: 15.h,
              width: double.infinity,
              // Customize the bottom sheet content here
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Are You Sure wan't Logout!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14.sp,
                            color: Colors.black,
                           fontFamily: CustomFonts.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 5.h,
                            width: 35.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.primaryDarkBlue,
                              border: Border.all(
                                width: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.white,
                                fontFamily: CustomFonts.bold,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                    // Add more options as needed
                  ],
                ),
              ),
            ),
            Positioned(
              right: 1.w,
              child: IconButton(
                icon: Icon(
                  Icons.highlight_remove,
                  size: 25.sp,
                  color: Colors.grey,
                ),
                // Icon to open the menu
                onPressed: () {
                  Navigator.of(context).pop();
                }, // We set onPressed to null to disable the button
              ),
            ),
          ],
        );
      },
    );
  }


}
