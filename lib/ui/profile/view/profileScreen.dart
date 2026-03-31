import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tradesleadapp/utils/customAppBar.dart';

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
         SizedBox(height: 1.h),
        Text(
          title,
          style: TextStyle(
            color: AppColors.primaryDarkBlue,
            fontWeight: FontWeight.bold,
            fontFamily: CustomFonts.bold,
            letterSpacing: 1,
            fontSize: 15.sp,
          ),
        ),
      ],
    );
  }

  Widget buildTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primaryDarkBlue),
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
        size: 16.sp,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F6FA),
      body: Column(
        children: [
          SizedBox(height: 5.h,),
       TitleBar(title: "title",
       isBackEnabled: true,

       ),



           SizedBox(height: 2.h),

          const CircleAvatar(
            radius: 40,
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
              fontSize: 15.sp,
            ),
          ),

          const SizedBox(height: 15),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildStat("Posts", "128"),
              buildStat("Followers", "12.4k"),
              buildStat("Following", "842"),
            ],
          ),

          const SizedBox(height: 20),

          Expanded(
            child: Column(
              children: [
                buildTile(Icons.person, "Edit Profile"),
                const Divider(height: 1),
                buildTile(Icons.settings, "Settings"),
                const Divider(height: 1),
                buildTile(Icons.lock, "Privacy"),
                const Divider(height: 1),
                buildTile(Icons.help, "Help & Support"),

                const Spacer(),

                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red.shade100,
                        foregroundColor: Colors.red,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      icon: const Icon(Icons.logout),
                      label: const Text("Log out"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
