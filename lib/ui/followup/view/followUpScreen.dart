import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/utils/CustomAppBar1.dart';
import 'package:tradesleadapp/utils/CustomBottomBar.dart';
import 'package:tradesleadapp/utils/CustomSearchField.dart';
import 'package:tradesleadapp/utils/customDrawer.dart';
import 'package:tradesleadapp/utils/importantStrings.dart';

class FollowUpScreen extends StatefulWidget {
  FollowUpScreen({super.key});

  @override
  State<FollowUpScreen> createState() => _FollowUpScreenState();
}

class _FollowUpScreenState extends State<FollowUpScreen> {
  List<Map<String, dynamic>> leadsList = [
    {
      "title": "Initial Consultation",
      "name": "Sarah Jenkins",
      "description":
          "Review architectural blueprints and discuss budget     raints.",
      "status": "Warm Lead",
      "time": "10:30 AM",
      "isHighPriority": true,
      "isSelected": true,
    },
    {
      "title": "Property Inspection",
      "name": "John Doe",
      "description": "Detailed inspection of the new site at West Side.",
      "status": "Cold Lead",
      "time": "02:15 PM",
      "isHighPriority": false,
      "isSelected": false,
    },
  ];

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      key: scaffoldKey,
      drawer: drawer1(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryDarkBlue,
        onPressed: () {},
        child: Icon(Icons.add, size: 20.sp, color: AppColors.white),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                title: "Follow Up",
                showDrawer: true,
                showBack: true,
              ),
              SizedBox(height: 2.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Morning, Aryan!",
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontFamily: CustomFonts.bold,
                          color: AppColors.primaryDarkBlue,
                        ),
                      ),
                      SizedBox(height: 0.5.h),
                      Text(
                        "You have 8 high priority follow-ups for today.",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: CustomFonts.regular,
                          color: AppColors.primaryDarkBlue,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      CustomSearchField(
                        hint: "Search leads...",
                        controller: searchController,
                        onChanged: (value) {
                          print("Searching: $value");
                        },
                        onClear: () {
                          print("Cleared");
                        },
                      ),

                      SizedBox(height: 2.h),

                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.white, // image જેવો background
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 2.w,
                                height: 12.h,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),

                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "HIGH PRIORITY",
                                        style: TextStyle(
                                          fontSize: 17.sp,
                                          fontFamily: CustomFonts.bold,
                                          color: AppColors.primaryDarkBlue,
                                          letterSpacing: 1,
                                        ),
                                      ),

                                      /// NUMBER + TEXT
                                      Row(
                                        children: [
                                          Text(
                                            "03",
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontFamily: CustomFonts.semiBold,
                                              color: AppColors.primaryDarkBlue,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            "Critical Leads",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              fontFamily: CustomFonts.regular,
                                              color: AppColors.primaryDarkBlue,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                        ],
                                      ),

                                      /// 👤 AVATARS (NO STACK → SIMPLE)
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 16,
                                            backgroundImage: NetworkImage(
                                              "https://i.pravatar.cc/150?img=12",
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(-10, 0),
                                            child: CircleAvatar(
                                              radius: 16,
                                              backgroundImage: NetworkImage(
                                                "https://i.pravatar.cc/150?img=13",
                                              ),
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(-20, 0),
                                            child: CircleAvatar(
                                              radius: 16,
                                              backgroundImage: NetworkImage(
                                                "https://i.pravatar.cc/150?img=14",
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
                        ),
                      ),

                      SizedBox(height: 2.h),

                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.white, // image જેવો background
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 2.w,
                                height: 12.h,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryDarkBlue,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),

                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "MEDIUM PRIORITY",
                                        style: TextStyle(
                                          fontSize: 17.sp,
                                          fontFamily: CustomFonts.bold,
                                          color: AppColors.primaryDarkBlue,
                                          letterSpacing: 1,
                                        ),
                                      ),

                                      /// NUMBER + TEXT
                                      Row(
                                        children: [
                                          Text(
                                            "13",
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontFamily: CustomFonts.semiBold,
                                              color: AppColors.primaryDarkBlue,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            "Active Discussions",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              fontFamily: CustomFonts.regular,
                                              color: AppColors.primaryDarkBlue,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                        ],
                                      ),

                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 16,
                                            backgroundImage: NetworkImage(
                                              "https://i.pravatar.cc/150?img=12",
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(-10, 0),
                                            child: CircleAvatar(
                                              radius: 16,
                                              backgroundImage: NetworkImage(
                                                "https://i.pravatar.cc/150?img=13",
                                              ),
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(-20, 0),
                                            child: CircleAvatar(
                                              radius: 16,
                                              backgroundImage: NetworkImage(
                                                "https://i.pravatar.cc/150?img=14",
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 2.h),

                                      Row(
                                        children: [
                                          Icon(
                                            Icons.trending_up,
                                            color: AppColors.primaryDarkBlue,
                                            size: 20.sp,
                                          ),
                                          SizedBox(width: 2.w),
                                          Text(
                                            "+4 from last yesterday",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              fontFamily: CustomFonts.regular,
                                              color: AppColors.primaryDarkBlue,
                                              letterSpacing: 1,
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
                        ),
                      ),

                      SizedBox(height: 2.h),

                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 2.w,
                                height: 12.h,
                                decoration: BoxDecoration(
                                  color: AppColors.green,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),

                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "COMPLETED TODAY",
                                        style: TextStyle(
                                          fontSize: 17.sp,
                                          fontFamily: CustomFonts.bold,
                                          color: AppColors.primaryDarkBlue,
                                          letterSpacing: 1,
                                        ),
                                      ),

                                      /// NUMBER + TEXT
                                      Row(
                                        children: [
                                          Text(
                                            "05",
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontFamily: CustomFonts.semiBold,
                                              color: AppColors.primaryDarkBlue,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            "Follow-ups closed",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              fontFamily: CustomFonts.regular,
                                              color: AppColors.primaryDarkBlue,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 2.h),

                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 4.w,
                                          vertical: 1.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: AppColors.green.withOpacity(
                                            0.1,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(width: 2.w),
                                            Text(
                                              "Target Reached",
                                              style: TextStyle(
                                                fontSize: 15.sp,
                                                fontFamily: CustomFonts.bold,
                                                color: AppColors.green,
                                              ),
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
                        ),
                      ),

                      SizedBox(height: 2.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Today's Tasks ",
                            style: TextStyle(
                              fontSize: 17.sp,
                              fontFamily: CustomFonts.bold,
                              color: AppColors.primaryDarkBlue,
                            ),
                          ),
                          SizedBox(height: 0.5.h),
                          Text(
                            "Mark all as seen",
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontFamily: CustomFonts.regular,
                              color: AppColors.primaryDarkBlue,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 2.h),

                      Column(
                        children: [
                          for (
                            int index = 0;
                            index < leadsList.length;
                            index++
                          ) ...[
                            Padding(
                              padding: EdgeInsets.only(bottom: 15),
                              child: Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 3.h,
                                            height: 3.h,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color:
                                                    leadsList[index]['isSelected']
                                                    ? AppColors.primaryDarkBlue
                                                    : AppColors.grey,
                                                width: 0.3.w,
                                              ),
                                              color:
                                                  leadsList[index]['isSelected']
                                                  ? AppColors.primaryDarkBlue
                                                  : Colors.transparent,
                                            ),
                                            child:
                                                leadsList[index]['isSelected']
                                                ? Icon(
                                                    Icons.check,
                                                    size: 16,
                                                    color: Colors.white,
                                                  )
                                                : null,
                                          ),

                                          SizedBox(width: 15),

                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        "${leadsList[index]['title']}:\n${leadsList[index]['name']}",
                                                        style: TextStyle(
                                                          fontSize: 17.sp,
                                                          fontFamily:
                                                              CustomFonts.bold,
                                                          color: AppColors
                                                              .primaryDarkBlue,
                                                          height: 1.2,
                                                        ),
                                                      ),
                                                    ),

                                                    Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                            horizontal: 10,
                                                            vertical: 6,
                                                          ),
                                                      decoration: BoxDecoration(
                                                        color: AppColors
                                                            .primaryDarkBlue,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              4,
                                                            ),
                                                      ),
                                                      child: Text(
                                                        "${leadsList[index]['status']}"
                                                            .toUpperCase(),
                                                        style: TextStyle(
                                                          fontSize: 15.sp,
                                                          fontFamily:
                                                              CustomFonts
                                                                  .semiBold,
                                                          color:
                                                              AppColors.white,
                                                          letterSpacing: 1,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                SizedBox(height: 1.h),

                                                Text(
                                                  "${leadsList[index]['description']}",
                                                  style: TextStyle(
                                                    color: AppColors
                                                        .primaryDarkBlue,
                                                    fontSize: 15.sp,
                                                    fontFamily:
                                                        CustomFonts.regular,
                                                    height: 1.3,
                                                  ),
                                                ),

                                                SizedBox(height: 15),

                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.access_time_filled,
                                                      size: 18.sp,
                                                      color: AppColors
                                                          .primaryDarkBlue,
                                                    ),

                                                    SizedBox(width: 5),

                                                    Text(
                                                      "${leadsList[index]['time']}",
                                                      style: TextStyle(
                                                        color: AppColors
                                                            .primaryDarkBlue,
                                                        fontSize: 15.sp,
                                                        fontFamily:
                                                            CustomFonts.regular,
                                                      ),
                                                    ),

                                                    if (leadsList[index]['isHighPriority'] ==
                                                        true) ...[
                                                      SizedBox(width: 3.w),
                                                      Icon(
                                                        Icons.priority_high,
                                                        color: AppColors.red,
                                                      ),
                                                      Text(
                                                        "High Priority",
                                                        style: TextStyle(
                                                          color: AppColors.red,
                                                          fontSize: 15.sp,
                                                          fontFamily:
                                                              CustomFonts.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 20),

                                      Row(
                                        children: [
                                          SizedBox(width: 40),

                                          Container(
                                            padding: EdgeInsets.all(12),
                                            decoration: BoxDecoration(
                                              color: AppColors.primaryDarkBlue
                                                  .withOpacity(0.1),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.phone,
                                              size: 20.sp,
                                              color: AppColors.primaryDarkBlue,
                                            ),
                                          ),

                                          SizedBox(width: 12),

                                          Container(
                                            padding: EdgeInsets.all(12),
                                            decoration: BoxDecoration(
                                              color: AppColors.primaryDarkBlue
                                                  .withOpacity(0.1),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.email,
                                              size: 20.sp,
                                              color: AppColors.primaryDarkBlue,
                                            ),
                                          ),

                                          SizedBox(width: 12),

                                          Container(
                                            padding: EdgeInsets.all(12),
                                            decoration: BoxDecoration(
                                              color: AppColors.primaryDarkBlue
                                                  .withOpacity(0.1),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.calendar_today,
                                              size: 20.sp,
                                              color: AppColors.primaryDarkBlue,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),

                      Text(
                        "UPCOMING",
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontFamily: CustomFonts.bold,
                          color: AppColors.primaryDarkBlue,
                        ),
                      ),
                      SizedBox(height: 2.h),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20.sp,
                            backgroundColor: AppColors.primaryDarkBlue,
                            child: Icon(Icons.person, color: AppColors.white),
                          ),

                          SizedBox(width: 12),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Follow-up with Michael Chen",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontFamily: CustomFonts.bold,
                                    color: AppColors.primaryDarkBlue,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Regarding material sourcing invoice",
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: CustomFonts.regular,
                                    color: AppColors.primaryDarkBlue,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Icon(Icons.more_vert, color: Colors.grey),
                        ],
                      ),

                      SizedBox(height: 20),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: AppColors.primaryDarkBlue,
                            child: Icon(
                              Icons.location_on,
                              color: AppColors.white,
                              size: 20.sp,
                            ),
                          ),

                          SizedBox(width: 12),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Site Visit: Riverfront Plaza",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontFamily: CustomFonts.bold,
                                    color: AppColors.primaryDarkBlue,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Weekly progress check with foreman",
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: CustomFonts.bold,
                                    color: AppColors.primaryDarkBlue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.more_vert, color: AppColors.primaryDarkBlue,size: 20.sp,),
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
      bottomNavigationBar: CustomBottomBar(currentIndex: -1),
    );
  }
}
