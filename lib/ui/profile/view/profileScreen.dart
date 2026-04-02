import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/utils/CustomAppBar1.dart';
import 'package:tradesleadapp/utils/CustomBottomBar.dart';
import 'package:tradesleadapp/utils/customAppBar.dart';
import 'package:tradesleadapp/utils/customDrawer.dart';
import '../../../utils/importantStrings.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Widget buildStat(String title, String value) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            color: AppColors.buttonNavy,
            fontWeight: FontWeight.bold,
            fontFamily: CustomFonts.bold,
            letterSpacing: 1,
            fontSize: 15.sp,
          ),
        ),
        SizedBox(height: 0.5.h),
        Text(
          title,
          style: TextStyle(
            color: AppColors.primaryDarkBlue,
            fontWeight: FontWeight.bold,
            fontFamily: CustomFonts.bold,
            letterSpacing: 1,
            fontSize: 13.sp,
          ),
        ),
      ],
    );
  }

  Widget buildTile(IconData icon, String title) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 0.8.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 2)),
        ],
      ),
      child: ListTile(
        leading: Container(
          height: 9.w,
          width: 9.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.primaryDarkBlue,
          ),
          child: Icon(icon, color: AppColors.white, size: 16.sp),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: AppColors.primaryDarkBlue,
            fontWeight: FontWeight.bold,
            fontFamily: CustomFonts.bold,
            letterSpacing: 1,
            fontSize: 15.sp,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: AppColors.primaryDarkBlue,
          size: 15.sp,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer1(),
      backgroundColor: AppColors.backGround,
      body: Column(
        children: [
          CustomAppBar(title: "Profile", showBack: true, showDrawer: true),

          SizedBox(height: 2.h),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
                  ),

                  SizedBox(height: 1.h),

                  Text(
                    "Aditya Patel",
                    style: TextStyle(
                      color: AppColors.buttonNavy,
                      fontWeight: FontWeight.bold,
                      fontFamily: CustomFonts.bold,
                      letterSpacing: 1,
                      fontSize: 17.sp,
                    ),
                  ),

                  SizedBox(height: 2.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildStat("Posts", "128"),
                      buildStat("Followers", "12.4k"),
                      buildStat("Following", "842"),
                    ],
                  ),

                  SizedBox(height: 3.h),

                  buildTile(Icons.person, "Edit Profile"),
                  buildTile(Icons.settings, "Settings"),
                  buildTile(Icons.lock, "Privacy"),
                  buildTile(Icons.help, "Help & Support"),

                  SizedBox(height: 3.h),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade100,
                          foregroundColor: Colors.red,
                          elevation: 0,
                          padding: EdgeInsets.symmetric(vertical: 1.5.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        icon: const Icon(Icons.logout, color: Colors.red),
                        label: Text(
                          "Log out",
                          style: TextStyle(
                            color: AppColors.red,
                            fontFamily: CustomFonts.regular,
                            letterSpacing: 1,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 5.h),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(currentIndex: 3),
    );
  }
}
